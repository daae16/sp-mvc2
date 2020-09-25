<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="/WEB-INF/views/common/head.jsp"></jsp:include>
</head>
<body>
	<div id="header">
		<div class="top">
			<div class="xans-element- xans-layout xans-layout-statelogoff ">
				
					<a href="/member/login.html">로그인</a>
					<a href="/member/join.html">회원가입</a>
					<a href="/order/basket.html">장바구니</a>
					<a href="/myshop/order/list.html">주문조회</a>
					<a href="/myshop/index.html">마이쇼핑</a>
					<a href="/board/in	dex.html">게시판</a>
					<a href="/calculator.html" target="_blank">니코틴 계산기</a>
				
			</div>
		</div>

		<div class="middle">

			<h1 class="xans-element- xans-layout xans-layout-logotop ">
				<a href="/"><img
					src="/web/upload/logo/43b092958b9850271983ce76db911138_11_top.jpg"
					alt="Home" /></a>
			</h1>
			<p class="banner"></p>



			<form id="searchBarForm" name="" action="/product/search.html"
				method="get" target="_self" enctype="multipart/form-data">
				<input id="banner_action" name="banner_action" value=""
					type="hidden" />
				<fieldset
					class="xans-element- xans-layout xans-layout-searchheader ">
					<!--
					$product_page=/product/detail.html
					$category_page=/product/list.html
				-->
					<legend>검색</legend>

					<input id="keyword" name="keyword" fw-filter="" fw-label="검색어"
						fw-msg="" class="inputTypeText" placeholder=""
						onmousedown="SEARCH_BANNER.clickSearchForm(this)" value=""
						type="text" /> <a href="#none"
						onclick="SEARCH_BANNER.submitSearchBanner(this); return false;; return false;">
						<img
						src="//img.echosting.cafe24.com/design/skin/fashion013/header_middle_search_icon.png"
						alt="검색" />
					</a>
				</fieldset>
			</form>
		</div>

		<div id="category"
			class="xans-element- xans-layout xans-layout-category">
			<ul>
				<li class="xans-record-"><a
					href="/product/list.html?cate_no=83"><img
						src="//thevapor.co.kr/web/upload/category/42c2890a13c2980d7bd3ab453cb3e107.jpg"
						id="cate_img_83" alt="하드웨어" /></a></li>

				<li class="xans-record-"><a
					href="/product/list.html?cate_no=152"><img
						src="//thevapor.co.kr/web/upload/category/shop1_152_menu_923708.jpg"
						id="cate_img_152" alt="직수입 원본액상" /></a></li>

				<li class="xans-record-"><a
					href="/product/list.html?cate_no=120"><img
						src="//thevapor.co.kr/web/upload/category/shop1_120_menu_750277.jpg"
						id="cate_img_120" alt="니코/솔트 리퀴드" /></a></li>

				<li class="xans-record-"><a
					href="/product/list.html?cate_no=12"><img
						src="//thevapor.co.kr/web/upload/category/669d23a3e0ed32ceff834675dd48c420.jpg"
						id="cate_img_12" alt="CSV" /></a></li>

				<li class="xans-record-"><a
					href="/product/list.html?cate_no=69"><img
						src="//thevapor.co.kr/web/upload/category/48869522703b035ec151f64c369aca23.jpg"
						id="cate_img_69" alt="DIY 솔루션" /></a></li>

				<li class="xans-record-"><a href="/product/list.html?cate_no=4"><img
						src="//thevapor.co.kr/web/upload/category/4d1c9583d4fce2576790af6a8694a11b.jpg"
						id="cate_img_4" alt="DIY 향료" /></a></li>

				<li class="xans-record-"><a href="/product/list.html?cate_no=7"><img
						src="//thevapor.co.kr/web/upload/category/c22c168e7cc5e88ac6c8bd94a1792630.jpg"
						id="cate_img_7" alt="DIY 재료" /></a></li>

				<li class="xans-record-"><a href="/board/index.html?cate_no=25"><img
						src="//thevapor.co.kr/web/upload/category/63d09e202616d914209bb507076679a1.jpg"
						id="cate_img_25" alt="커뮤니티" /></a></li>
			</ul>
		</div>
	</div>
</body>
</html>