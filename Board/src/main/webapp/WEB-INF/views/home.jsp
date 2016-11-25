<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description"
	content="Introducing Lollipop, a sweet new take on Android.">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
<title>BOARD!!</title>

<!-- Page styles -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://code.getmdl.io/1.2.1/material.min.css">
<link rel="stylesheet" href="styles.css">
<style>
#view-source {
	position: fixed;
	display: block;
	right: 0;
	bottom: 0;
	margin-right: 40px;
	margin-bottom: 40px;
	z-index: 900;
}

#video {
	position: absolute;
	top: 0px;
	left: 0px;
	min-width: 100%;
	min-height: 100%;
	width: auto;
	height: auto;
	z-index: -1;
	overflow: hidden;
}
</style>
</head>
<body>
	<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
		<div
			class="android-header mdl-layout__header mdl-layout__header--waterfall">
			<div class="mdl-layout__header-row">
				<span class="android-title mdl-layout-title"> <img
					class="android-logo-image" src="images/mainlogo.jpg">
				</span>
				<div class="android-header-spacer mdl-layout-spacer"></div>
				<div
					class="android-search-box mdl-textfield mdl-js-textfield mdl-textfield--expandable mdl-textfield--floating-label mdl-textfield--align-right mdl-textfield--full-width">
					<label class="mdl-button mdl-js-button mdl-button--icon"
						for="search-field"> <i class="material-icons">search</i>
					</label>
					<div class="mdl-textfield__expandable-holder">
						<input class="mdl-textfield__input" type="text" id="search-field">
					</div>
				</div>


				<!-- Navigation -->
				<div class="android-navigation-container">
					<nav class="android-navigation mdl-navigation">
						<a class="mdl-navigation__link mdl-typography--text-uppercase"
							href="index.jsp">HOME</a> <a
							class="mdl-navigation__link mdl-typography--text-uppercase"
							href="music.jsp">음악</a> <a
							class="mdl-navigation__link mdl-typography--text-uppercase"
							href="movie.jsp">동영상</a>
						<!-- 정보페이지 -->
						<a class="mdl-navigation__link mdl-typography--text-uppercase"
							href="girl.jsp">걸그룹정보</a> <a
							class="mdl-navigation__link mdl-typography--text-uppercase"
							href="game.jsp">게임정보</a>
					</nav>
				</div>
				<span class="android-mobile-title mdl-layout-title"> <img
					class="android-logo-image" src="../images/android-logo.png">
				</span>
				<button
					class="android-more-button mdl-button mdl-js-button mdl-button--icon mdl-js-ripple-effect"
					id="more-button">
					<i class="material-icons">more_vert</i>
				</button>
				<ul
					class="mdl-menu mdl-js-menu mdl-menu--bottom-right mdl-js-ripple-effect"
					for="more-button">
					<li class="mdl-menu__item"><a
						href='http://localhost:8081/member/addmember.jsp'>회원가입</a></li>
					<li class="mdl-menu__item"><a
						href='http://localhost:8081/member/login.jsp'>로그인</a></li>
					<li class="mdl-menu__item"><a
						href='http://localhost:8081/action/logout.jsp'>로그아웃</a></li>
				</ul>
			</div>
		</div>

		<div class="android-drawer mdl-layout__drawer">
			<span class="mdl-layout-title"> <img
				class="android-logo-image" src="../images/android-logo-white.png">
			</span>
			<nav class="mdl-navigation">
				<span class="mdl-navigation__link">MEMBER</span> <a
					class="mdl-navigation__link"
					href='http://localhost:8081/member/addmember.jsp'>회원가입</a> <a
					class="mdl-navigation__link"
					href='http://localhost:8081/member/login.jsp'>로그인</a> <a
					class="mdl-navigation__link"
					href='http://localhost:8081/action/logout.jsp'>로그아웃</a>
				<div class="android-drawer-separator"></div>
				<span class="mdl-navigation__link">MENU</span> <a
					class="mdl-navigation__link" href="">HOME</a> <a
					class="mdl-navigation__link" href="">음악</a> <a
					class="mdl-navigation__link" href="">동영상</a> <a
					class="mdl-navigation__link" href="">걸그룹정보</a> <a
					class="mdl-navigation__link" href="">게임정보</a>
			</nav>
		</div>
		<div class="android-content mdl-layout__content"></div>
		<!-- 메인 페이지 내용 채울 공간 -->

		<script src="https://code.getmdl.io/1.2.1/material.min.js"></script>
</body>
</html>