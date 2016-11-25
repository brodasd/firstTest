package org.zerock.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.zerock.domain.BoardVO;
import org.zerock.domain.SearchCriteria;
import org.zerock.service.BoardService;
import org.zerock.service.ReplyService;
import org.zerock.util.PageMaker;

@Controller
@RequestMapping(value = "/board/*")
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Autowired
	BoardService boardService;

	@Autowired
	ReplyService replyService;

	@GetMapping("/list")
	public void list(Model model, int page) throws Exception {
		logger.info("보드페이지호출.........");
		PageMaker pm = new PageMaker(page, boardService.count());
		model.addAttribute("list", boardService.listPage(page));
		model.addAttribute("count", boardService.count());
		model.addAttribute("page", pm);
	}

	@GetMapping("/listSearch")
	public String listSearch(Model model, @ModelAttribute SearchCriteria cri, int page) throws Exception {

		logger.info("보드페이지호출....search.....");
		
		logger.info(cri.toString());
		PageMaker pm = new PageMaker(page, boardService.searchCount(cri));

		model.addAttribute("list", boardService.search(cri));

		model.addAttribute("page", pm);
		
		return "/board/list";

	}
	
/*	@GetMapping("/listSearch")
	   public String listSearch(Model model, Criteria cri) throws Exception {
	      logger.info("listSearch call.............");
	      model.addAttribute("listPage", bsi.listSearch(cri));   
	      model.addAttribute("pageMaker", new PageMaker(cri.getPage(), bsi.CountSearch(cri)));
	      return "/bps/listPage";
	   }*/

	@GetMapping("/view")
	public void view(int bno, Model model) throws Exception {
		model.addAttribute("read", boardService.read(bno));
		model.addAttribute("reply", replyService.list(bno));
	}

	@GetMapping("/register")
	public void register(Model model) throws Exception {
		logger.info("등록페이지.........");
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String createRegister(BoardVO vo) throws Exception {
		logger.info("등록합니다.");
		boardService.create(vo);
		return "redirect:./list?page=1";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updateView(BoardVO vo) throws Exception {
		boardService.update(vo);
		return "redirect:./list?page=1";
	}

	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete(int bno) throws Exception {
		boardService.delete(bno);
		return "redirect:./list?page=1";
	}

}
