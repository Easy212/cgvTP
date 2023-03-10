<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>자백 영화정보</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <script type="text/javascript" src="${contextPath}/teamproject/js/jquery-3.6.0.min.js"></script>
    <!-- Slick -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.min.css">
    <link rel="stylesheet" href="${contextPath}/teamproject/css/common.css"> 
    <link rel="stylesheet" href="${contextPath}/teamproject/css/icommon.css">
    <script src="${contextPath}/teamproject/js/movie.js"></script>
    
    <!-- CSS LINK -->
  <link rel="stylesheet" href="${contextPath}/teamproject/css/icommon.css">
  <!--공통영역 CSS-->

  <!-- BOXICONE https://boxicons.com/ 사이트에서 이모티콘 가져올 수 있음-->
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

  <!-- LODASH CDN -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.21/lodash.min.js"
    integrity="sha512-WFN04846sdKMIP5LKNphMaWzU7YpMyCU245etK3g/2ARYbPK9Ub18eG+ljU96qKRCWh+quCY7yefSmlkQw1ANQ=="
    crossorigin="anonymous"></script>
  <!-- GSAP CDN (javascript로 애니매이션 효과)-->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.9.1/gsap.min.js"
    integrity="sha512-H6cPm97FAsgIKmlBA4s774vqoN24V5gSQL4yBTDOY2su2DeXZVhQPxFK4P6GPdnZqM9fg1G3cMv5wD7e6cFLZQ=="
    crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.9.1/ScrollToPlugin.min.js"
    integrity="sha512-agNfXmEo6F+qcj3WGryaRvl9X9wLMQORbTt5ACS9YVqzKDMzhRxY+xjgO45HCLm61OwHWR1Oblp4QSw/SGh9SA=="
    crossorigin="anonymous"></script>

  <!-- SCROLL MAGIC CDN -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.8/ScrollMagic.min.js"
    integrity="sha512-8E3KZoPoZCD+1dgfqhPbejQBnQfBXe8FuwL4z/c8sTrgeDMFEnoyTlH3obB4/fV+6Sg0a0XF+L/6xS4Xx1fUEg=="
    crossorigin="anonymous"></script>

  <!-- JAVA SCRIPT 연결 -->
  <script src="${contextPath}/teamproject/js/common.js" defer></script>
    
</head>
<body>
<!-- HEADER -->
  <header>
    <div class="inner">
      <!-- logo & 이모티콘영역 -->
      <div class="top_area">
        <div class="logo_con">
          <div class="logo_image">
            <img src="${contextPath}/teamproject/img/logoRed.png" alt="CGV" class="logo logo_red">
            <img src="${contextPath}/teamproject/imglogoWhite.png" alt="CGV" class="logo logo_white">
          </div>
          <div class="logo_text">
            CURTULPLEX
          </div>
        </div>
        <div class="mem_info">
          <div class="login_info">
            <div class="login">
              <i class='bx bx-log-in-circle'></i>
              <p>로그인</p>
            </div>
            <div class="logout hidden">
              <i class='bx bx-log-out-circle'></i>
              <p>로그아웃</p>
            </div>
          </div>
          <div class="mem_join">
            <i class='bx bx-user-plus'></i>
            <p>회원가입</p>
          </div>
          <div class="myCGV">
            <i class='bx bx-user'></i>
            <p>MY CGV</p>
          </div>
          <div class="QNA">
            <i class='bx bx-support'></i>
            <p>고객센터</p>
          </div>
        </div>
      </div>

    </div>

    <!-- MENU & SEARCH 영역 -->
    <div class="menu_area">
      <div class="inner">
        <ul class="main_menu">
          <li>
            <h2 class="menu_name">영화</h2>
            <ul class="menu_contents">
              <li>
                <h3>영화</h3>
              </li>
              <li><a href="${contextPath}/movie/movieChart.do">무비차트</a></li>
              <li><a href="#">아트하우스</a></li>
              <li><a href="#">ICECON</a></li>
            </ul>
          </li>

          <li>
            <h2 class="menu_name">극장</h2>
            <ul class="menu_contents">
              <li>
                <h3>극장</h3>
              </li>
              <li><a href="#">CGV 극장</a></li>
              <li><a href="#">특별관</a></li>
            </ul>
          </li>

          <li>
            <h2 class="menu_name">예매</h2>
            <ul class="menu_contents">
              <li>
                <h3>예매</h3>
              </li>
              <li><a href="${contextPath}/movie/ticket.do">빠른예매</a></li>
              <li><a href="#">상영스케줄</a></li>
              <li><a href="#">English Ticketing</a></li>
              <li><a href="#">English Scedule</a></li>
            </ul>
          </li>

          <li>
            <h2 class="menu_name">스토어</h2>
            <ul class="menu_contents">
              <li>
                <h3>스토어</h3>
              </li>
              <li><a href="#">영화관람권</a></li>
              <li><a href="#">기프트카드</a></li>
              <li><a href="#">콤보</a></li>
              <li><a href="#">팝콘</a></li>
              <li><a href="#">음료</a></li>
              <li><a href="#">스낵</a></li>
              <li><a href="#">플레이존</a></li>
              <li><a href="#">씨네샵></a></li>
            </ul>
          </li>

          <li>
            <h2 class="menu_name">이벤트</h2>
            <ul class="menu_contents">
              <li>
                <h3>이벤트</h3>
              </li>
              <li><a href="#">SPECIAL</a></li>
              <li><a href="#">영화/예매</a></li>
              <li><a href="#">멤버십/CLUB</a></li>
              <li><a href="#">CGV 극장별</a></li>
              <li><a href="#">제휴할인</a></li>
              <li><a href="#">당첨자 발표</a></li>
              <li><a href="#">종료된 이벤트</a></li>
            </ul>
          </li>

          <li>
            <h2 class="menu_name">혜택</h2>
            <ul class="menu_contents">
              <li>
                <h3>혜택</h3>
              </li>
              <li><a href="#">CGV 할인정보</a></li>
              <li><a href="#">CLUB 서비스</a></li>
              <li><a href="#">VIP 라운지</a></li>
            </ul>
          </li>
        </ul>

        <div class="search_menu">
            <input type="text" name="search_bar" id="search_bar">
            <div class="search_btn"><i class='bx bx-search-alt-2'></i></div>
        </div>
      </div>
      <div class="menu_bg"></div>
    </div>
  </header>

    <div class="mvWrap">
        <div class="mvInfo">
            <div class="img_box">
                <img src="${contextPath}/teamproject/img/conf.jpg" alt="자백" >
            </div>
            <div class="con_box">
                <div class="con_title">
                    <h2>${movieList[1].mvTitle}</h2><!--DB생성 및 연결 후 mvtitle로 대체-->
                    <span>현재상영중</span>
                    <p>Confession</p>
                </div> 
                <div class="con_score">
                    <p>예매율 16.0%</p> <!--필요여부?-->
                </div> 
                <div class="con_spec">
                    <p>감독 : 윤종석 / 배우 : 소지섭, 김윤진, 나나, 최광일</p>
                    <p>장르 : 스릴러 / 기본 : 15, ${movieList[1].runTime}, 한국</p>
                    <p>개봉 : <fmt:formatDate value="${movieList[1].openDate}" pattern="yyyy.MM.dd"/></p> <!--DB생성 및 연결 후 opendate로 대체-->
                </div> 
                <div class="con_tiket">
                    <a href="${contextPath}/movie/confessionTicket.do"><input type="button" value="예매하기"></a>
                    
                </div> 
            </div>
        </div>
        <div class="detail">
            <ul class="tap">
                <li><a href="#mvContent">주요정보</a></li>
                <li><a href="#trailer">트레일러</a></li>
                <li><a href="#still">스틸컷</a></li>
                <li><a href="#">평점/리뷰</a></li> <!--필요여부?-->
                <li><a href="#">상영시간표</a></li>
            </ul>
            <div id="mvContent"> <!--DB생성 및 연결 후 mvcontent로 대체-->
                <p>${movieList[1].mvContent}</p>
            </div>

            <div id="trailer">
                <h3>트레일러</h3>
                <div class="trailerBox">
                    <div>
                        <video src="${contextPath}/teamproject/img/conf_tr1.mp4" autoplay controls></video>
                        <p>메인 예고편</p>
                    </div>
                    <div>
                        <video src="${contextPath}/teamproject/img/conf_tr2.mp4" autoplay controls></video>
                        <p>스페셜 티저 예고편</p>
                    </div>
                    <div>
                        <video src="${contextPath}/teamproject/img/conf_tr3.mp4" autoplay controls></video>
                        <p>캐릭터 진술 영상</p>
                    </div>
                </div>
            </div>

            <div id="still">
                    <h3>스틸컷</h3>
                
                <div class="slide">
                    <div class="slide_img">
                        <img src="${contextPath}/teamproject/img/conf_stillcut1.jpg" alt="스틸컷1">
                    </div>
                    <div class="slide_img">
                        <img src="${contextPath}/teamproject/img/conf_stillcut2.jpg" alt="스틸컷2">
                    </div>
                    <div class="slide_img">
                        <img src="${contextPath}/teamproject/img/conf_stillcut3.jpg" alt="스틸컷3">
                    </div>
                    <div class="slide_img">
                        <img src="${contextPath}/teamproject/img/conf_stillcut4.jpg" alt="스틸컷4">
                    </div>
                    <div class="slide_img">
                        <img src="${contextPath}/teamproject/img/conf_stillcut5.jpg" alt="스틸컷5">
                    </div>
                    <div class="slide_img">
                        <img src="${contextPath}/teamproject/img/conf_stillcut6.jpg" alt="스틸컷6">
                    </div>
                </div>
            </div>
        </div>
    </div>
    
     <!-- FOOTER -->
  <footer>
    <div class="policy_list">
      <div class="inner">
        <ul>
          <li><a href="#">회사소개</a></li>
          <li><a href="#">IR</a></li>
          <li><a href="#">채용정보</a></li>
          <li><a href="#">광고/제휴/출점문의</a></li>
          <li><a href="#">이용약관</a></li>
          <li><a href="#">편성기준</a></li>
          <li><a href="#">개인정보처리방침</a></li>
          <li><a href="#">법적고지</a></li>
          <li><a href="#">이메일주소무단수집거부</a></li>
          <li><a href="#">윤리경영</a></li>
          <li><a href="#">사이버감사실</a></li>
        </ul>
      </div>
    </div>
    <div class="company_info_wrap">
      <div class="inner">
        <div class="company_info">
          <p>(04377)서울특별시 용산구 한강대로 23길 55, 아피카므로 6층(한강로동)</p>
          <p>대표이사 : 오남석 · 사업자등록번호 : 123-45-678910 · 통신판매업신고번호 : 2017-서울용산-0662 <a href="#">사업자정보확인</a></p>
          <p>호스팅사업자 : CJ올리브네트웍스 · 개인정보보호 책임자 : 심준범 · 대표이메일 : abcdefg@cj.net</p>
          <p>ⓒ CJ CGV. All Rights Reserved</p>
        </div>
      </div>
    </div>
  </footer>

  <div id="to-top">
    <i class='bx bx-up-arrow-alt'></i>
  </div>
</body>
</html>