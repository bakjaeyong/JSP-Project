<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="Our Features &amp;amp; Services.">
    <meta name="description" content="">
    <link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="메인.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 4.11.3, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">

    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": ""
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="메인">
    <meta property="og:type" content="website">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
 <style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: "Noto Sans KR", sans-serif;
  }
  
  a {
    text-decoration: none;
    color: green;
  }
  
  li {
    list-style: none;
  }
  
  table {
     margin-left: 100px;
     margin-right: 100px;
     
  }
  th {
     border: 1px solid black;
  }
  tr {
     border: 1px solid black;
  }
  
  .wrap {
    width: 100%;
    height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    background: rgba(0, 0, 0, 0.1);
  }
  
    .wrap2 {
    width: 30%;
    height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    background: rgba(0, 0, 0, 0.1);
  }
  
  .login {
    width: 30%;
    height: 600px;
    background: white;
    border-radius: 20px;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
  }
  .h2black {
     font-size: 2em;
     color: black;
     text-align: center;
  }
  h2 {
    color: tomato;
    font-size: 2em;
    text-align: center;
  }
  .login_sns {
    padding: 20px;
    display: flex;
  }
  
  .login_id {
    margin-top: 20px;
    width: 80%;
  }
  
  .login_id input {
    width: 100%;
    height: 50px;
    border-radius: 30px;
    margin-top: 10px;
    padding: 0px 20px;
    border: 1px solid lightgray;
    outline: none;
  }
  
  .login_pw {
    margin-top: 20px;
    width: 80%;
  }
  
  .login_pw input {
    width: 100%;
    height: 50px;
    border-radius: 30px;
    margin-top: 10px;
    padding: 0px 20px;
    border: 1px solid lightgray;
    outline: none;
  }
  
  .login_etc {
    padding: 10px;
    width: 80%;
    font-size: 14px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    font-weight: bold;
  }
  
  .submit {
    margin-top: 50px;
    width: 80%;
  }
  .submit input {
    width: 100%;
    height: 50px;
    border: 0;
    outline: none;
    border-radius: 40px;
    background: linear-gradient(to left, rgb(255, 77, 46), rgb(255, 155, 47));
    color: white;
    font-size: 1.2em;
    letter-spacing: 2px;
  }
    </style>
<meta charset="UTF-8">
<title>BOARD LIST</title>
</head>
<body class="u-body u-xl-mode"><header class="u-clearfix u-header u-header" id="sec-eb1b"><div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
          <div class="menu-collapse" style="font-size: 1rem; letter-spacing: 0px;">
            <a class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#">
              <svg class="u-svg-link" viewBox="0 0 24 24"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use></svg>
              <svg class="u-svg-content" version="1.1" id="menu-hamburger" viewBox="0 0 16 16" x="0px" y="0px" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg"><g><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</g></svg>
            </a>
          </div>
          <div class="u-custom-menu u-nav-container">
            <ul class="u-nav u-unstyled u-nav-1"><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="메인.html" style="padding: 10px 20px;">메인</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="경기결과.html" style="padding: 10px 20px;">경기결과</a><div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10"><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="Football.html">Football</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="Basketball.html">Basketball</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="Baseball.html">Baseball</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="뉴스.html" style="padding: 10px 20px;">뉴스</a>
</li>
<li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="BoardList.jsp" style="padding: 10px 20px;">게시판</a>
</li>
</ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-3"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="메인.html">메인</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="경기결과.html">경기결과</a><div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Football.html">Football</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Basketball.html">Basketball</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Baseball.html">Baseball</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="뉴스.html">뉴스</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
<a href="index.html"><h1 class="u-text u-text-default u-text-1">Live Score</h1></a>
        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-2">
          <div class="menu-collapse">
            <a class="u-button-style u-nav-link" href="#">
              <svg class="u-svg-link" viewBox="0 0 24 24"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-cb2b"></use></svg>
              <svg class="u-svg-content" version="1.1" id="svg-cb2b" viewBox="0 0 16 16" x="0px" y="0px" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg"><g><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</g></svg>
            </a>
          </div>
          <div class="u-custom-menu u-nav-container">
            <ul class="u-nav u-unstyled"><li class="u-nav-item">
            <a href="loginForm.jsp" class="u-button-style u-nav-link">로그인</a>
</li><li class="u-nav-item"><a href="JoinForm.jsp" class="u-button-style u-nav-link">회원가입</a>
</li></ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-6"><li class="u-nav-item"><a class="u-button-style u-nav-link">로그인</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">회원가입</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
      </div></header>
   <div class="wrap">
      <div class="wrap2"><h2 class="h2black">게시판 리스트</h2><br><br><br><br>
      <a href="board.jsp"><input type="submit" value="글쓰기"></a></div>
      
   
   <table class="table">
      <tr>
         <th>Title</th>
         <th>Name</th>
         <th>Content</th>
      </tr>
      <c:forEach var="dto" items = "${dtos}">
	      <tr>
	      	<td>${dto.title }</td>
	      	<td>${dto.name }</td>
	      	<td>${dto.content }</td>
	      </tr>
      </c:forEach>
   </table>
</body>
<!-- <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-68ef"><div class="u-clearfix u-sheet u-sheet-1">
<p class="u-small-text u-text u-text-variant u-text-1">JSP 팀 프로젝트&nbsp;<br>손옥무, 박재용, 최혁재
</p></div></footer> -->
</html>