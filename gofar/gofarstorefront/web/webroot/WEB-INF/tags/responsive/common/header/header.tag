<%@ tag body-content="empty" trimDirectiveWhitespaces="true"%>
<%@ attribute name="hideHeaderLinks" required="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags"%>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="nav" tagdir="/WEB-INF/tags/responsive/nav"%>

<header id="header-page">
	<div class="header-page__inner">
		<div class="container">
			<div class="logo">
				<a href="index-2.html"><img src="images/logo.png" alt=""></a>
			</div>
			<nav class="navigation awe-navigation" data-responsive="1200"
				style="height: auto;">
				<ul class="menu-list">
					<cms:pageSlot position="NavigationBarSection" var="feature">
						<cms:component component="${feature}" />
					</cms:pageSlot>
				</ul>
			</nav>
			<cms:pageSlot position="SearchBoxSection" var="feature">
				<cms:component component="${feature}" />
			</cms:pageSlot>
			<!-- <div class="search-box">
				<span class="searchtoggle"><i
					class="awe-icon awe-icon-search"></i></span>
				<form class="form-search">
					<div class="form-item">
						<input type="text" value="Search &amp; hit enter">
					</div>
				</form>
			</div> -->
		<!-- 	<a class="toggle-menu-responsive" href="#"><div class="hamburger">
					<span class="item item-1"></span> <span class="item item-2"></span>
					<span class="item item-3"></span>
				</div></a> -->
		</div>
	</div>
</header>


<%-- <header id="header-page">
	<div class="header-page__inner">
		<div class="container">
			<div class="logo">
				<a href="index-2.html"><img src="images/logo.png" alt=""></a>
			</div>
			<nav class="navigation awe-navigation" data-responsive="1200">
				<ul class="menu-list">
				<cms:pageSlot position="NavigationBarSection" var="feature">
						<cms:component component="${feature}" />
					</cms:pageSlot>
					<!-- <li class="menu-item-has-children current-menu-parent"><a
						href="index-2.html">Home</a>
						<ul class="sub-menu">
							<li class="current-menu-item"><a href="index-2.html">Home
									1</a></li>
							<li><a href="index2.html">Home 2</a></li>
							<li><a href="index3.html">Menu hamburger</a></li>
							<li><a href="index-dark.html">Home 1 (Dark)</a></li>
							<li><a href="index2-dark.html">Home 2 (Dark)</a></li>
							<li><a href="index3-dark.html">Menu hamburger (Dark)</a></li>
						</ul></li> -->
					<li class="menu-item-has-children"><a
						href="destinations-list.html">Destinations</a>
						<ul class="sub-menu">
							<li><a href="destinations-list.html">List</a></li>
							<li><a href="destinations-grid.html">Grid</a></li>
							<li class="menu-item-has-children"><a
								href="destinations-trip.html">Detail</a>
								<ul class="sub-menu">
									<li><a href="destinations-trip.html">Trips in
											destination</a></li>
									<li><a href="destinations-hotel.html">Hotels in
											destination</a></li>
									<li><a href="destinations-attraction.html">Attraction
											in destination</a></li>
									<li><a href="destinations-flight.html">Flights in
											destination</a></li>
									<li><a href="destinations-train.html">Train in
											destination</a></li>
								</ul></li>
							<li><a href="destinations-list-dark.html">List (Dark)</a></li>
							<li><a href="destinations-grid-dark.html">Grid (Dark)</a></li>
							<li class="menu-item-has-children"><a
								href="destinations-trip.html">Detail (Dark)</a>
								<ul class="sub-menu">
									<li><a href="destinations-trip-dark.html">Trips in
											destination</a></li>
									<li><a href="destinations-hotel-dark.html">Hotels in
											destination</a></li>
									<li><a href="destinations-attraction-dark.html">Attraction
											in destination</a></li>
									<li><a href="destinations-flight-dark.html">Flights in
											destination</a></li>
									<li><a href="destinations-train-dark.html">Train in
											destination</a></li>
								</ul></li>
						</ul></li>
					<li class="menu-item-has-children"><a href="trip.html">Trips</a>
						<ul class="sub-menu">
							<li><a href="trip.html">Trips</a></li>
							<li><a href="trip-detail.html">Trips Detail</a></li>
							<li><a href="trip-dark.html">Trips (Dark)</a></li>
							<li><a href="trip-detail-dark.html">Trips Detail (Dark)</a></li>
						</ul></li>
					<li class="menu-item-has-children"><a href="hotel.html">Hotel</a>
						<ul class="sub-menu">
							<li><a href="hotel.html">Hotel</a></li>
							<li><a href="hotel-detail.html">Hotel Detail</a></li>
							<li><a href="hotel-dark.html">Hotel (Dark)</a></li>
							<li><a href="hotel-detail-dark.html">Hotel Detail (Dark)</a></li>
						</ul></li>
					<li class="menu-item-has-children"><a href="flight.html">Flight</a>
						<ul class="sub-menu">
							<li><a href="flight.html">Flight</a></li>
							<li><a href="flight-detail.html">Flight Detail</a></li>
							<li><a href="flight-dark.html">Flight (Dark)</a></li>
							<li><a href="flight-detail-dark.html">Flight Detail
									(Dark)</a></li>
						</ul></li>
					<li class="menu-item-has-children"><a href="train.html">Train</a>
						<ul class="sub-menu">
							<li><a href="train.html">Train</a></li>
							<li><a href="train-detail.html">Train Detail</a></li>
							<li><a href="train-dark.html">Train (Dark)</a></li>
							<li><a href="train-detail-dark.html">Train Detail (Dark)</a></li>
						</ul></li>
					<li class="menu-item-has-children"><a href="attraction.html">Attraction</a>
						<ul class="sub-menu">
							<li><a href="attraction.html">Attraction</a></li>
							<li><a href="attraction-detail.html">Attraction Detail</a></li>
							<li><a href="attraction-dark.html">Attraction (Dark)</a></li>
							<li><a href="attraction-detail-dark.html">Attraction
									Detail (Dark)</a></li>
						</ul></li>
					<li class="menu-item-has-children"><a href="#">Pages</a>
						<ul class="sub-menu">
							<li class="menu-item-has-children"><a href="blog.html">Blog</a>
								<ul class="sub-menu">
									<li><a href="blog.html">Blog</a></li>
									<li><a href="single-post.html">Single Post</a></li>
									<li><a href="blog-dark.html">Blog (Dark)</a></li>
									<li><a href="single-post-dark.html">Single Post (Dark)</a></li>
								</ul></li>
							<li class="menu-item-has-children"><a href="login.html">Log
									In</a>
								<ul class="sub-menu">
									<li><a href="login.html">Log In</a></li>
									<li><a href="register.html">Register</a></li>
									<li><a href="login.html">Log In (Dark)</a></li>
									<li><a href="register.html">Register (Dark)</a></li>
								</ul></li>
							<li class="menu-item-has-children"><a
								href="checkout-yourcart.html">Checkout</a>
								<ul class="sub-menu">
									<li><a href="checkout-yourcart.html">Your cart</a></li>
									<li><a href="checkout-customer.html">Customer</a></li>
									<li><a href="checkout-complete.html">Complete</a></li>
									<li><a href="checkout-yourcart-dark.html">Your cart
											(Dark)</a></li>
									<li><a href="checkout-customer-dark.html">Customer
											(Dark)</a></li>
									<li><a href="checkout-complete-dark.html">Complete
											(Dark)</a></li>
								</ul></li>
							<li><a href="shortcode.html">Shortcode</a></li>
						</ul></li>
					<li class="menu-item-has-children"><a href="contact.html">Contact</a>
						<ul class="sub-menu">
							<li><a href="contact.html">Light</a></li>
							<li><a href="contact-dark.html">Dark</a></li>
						</ul></li>
				</ul>
			</nav>
			<div class="search-box">
				<span class="searchtoggle"><i
					class="awe-icon awe-icon-search"></i></span>
				<form class="form-search">
					<div class="form-item">
						<input type="text" value="Search &amp; hit enter">
					</div>
				</form>
			</div>
			<a class="toggle-menu-responsive" href="#"><div class="hamburger">
					<span class="item item-1"></span> <span class="item item-2"></span>
					<span class="item item-3"></span>
				</div></a>
		</div>
	</div>
</header>
 --%>








































<%-- 	 Himanshi
									<cms:pageSlot position="TopHeaderSlot" var="component"
										element="div" class="container">
										<cms:component component="${component}" />
									</cms:pageSlot>
									<header class="js-mainHeader">
										<nav class="navigation navigation--top hidden-xs hidden-sm">
											<div class="row">
												<div class="col-sm-12 col-md-4">
													<div class="nav__left js-site-logo">
														<cms:pageSlot position="SiteLogo" var="logo" limit="1">
															<cms:component component="${logo}" element="div"
																class="yComponentWrapper" />
														</cms:pageSlot>
													</div>
												</div>
												<div class="col-sm-12 col-md-8">
													<div class="nav__right">
														<ul class="nav__links nav__links--account">
															<c:if test="${empty hideHeaderLinks}">
																<c:if test="${uiExperienceOverride}">
																	<li class="backToMobileLink"><c:url
																			value="/_s/ui-experience?level="
																			var="backToMobileStoreUrl" /> <a
																		href="${backToMobileStoreUrl}"> <spring:theme
																				code="text.backToMobileStore" />
																	</a></li>
																</c:if>

																<sec:authorize access="!hasAnyRole('ROLE_ANONYMOUS')">
																	<c:set var="maxNumberChars" value="25" />
																	<c:if
																		test="${fn:length(user.firstName) gt maxNumberChars}">
																		<c:set target="${user}" property="firstName"
																			value="${fn:substring(user.firstName, 0, maxNumberChars)}..." />
																	</c:if>

																	<li class="logged_in js-logged_in"><ycommerce:testId
																			code="header_LoggedUser">
																			<spring:theme code="header.welcome"
																				arguments="${user.firstName},${user.lastName}"
																				htmlEscape="true" />
																		</ycommerce:testId></li>
																</sec:authorize>

																<cms:pageSlot position="HeaderLinks" var="link">
																	<cms:component component="${link}" element="li" />
																</cms:pageSlot>

																<sec:authorize access="hasAnyRole('ROLE_ANONYMOUS')">
																	<li class="liOffcanvas"><ycommerce:testId
																			code="header_Login_link">
																			<a href="<c:url value='/login'/>"> <spring:theme
																					code="header.link.login" />
																			</a>
																		</ycommerce:testId></li>
																</sec:authorize>

																<sec:authorize access="!hasAnyRole('ROLE_ANONYMOUS')">
																	<li class="liOffcanvas"><ycommerce:testId
																			code="header_signOut">
																			<a href="<c:url value='/logout'/>"> <spring:theme
																					code="header.link.logout" />
																			</a>
																		</ycommerce:testId></li>
																</sec:authorize>

															</c:if>
														</ul>
													</div>
												</div>
											</div>
										</nav>
										a hook for the my account links in desktop/wide desktop
										<div
											class="hidden-xs hidden-sm js-secondaryNavAccount collapse"
											id="accNavComponentDesktopOne">
											<ul class="nav__links">

											</ul>
										</div>
										<div
											class="hidden-xs hidden-sm js-secondaryNavCompany collapse"
											id="accNavComponentDesktopTwo">
											<ul class="nav__links js-nav__links">

											</ul>
										</div>
										<nav
											class="navigation navigation--middle js-navigation--middle">
											<div class="container-fluid">
												<div class="row">
													<div class="mobile__nav__row mobile__nav__row--table">
														<div class="mobile__nav__row--table-group">
															<div class="mobile__nav__row--table-row">
																<div
																	class="mobile__nav__row--table-cell visible-xs hidden-sm">
																	<button
																		class="mobile__nav__row--btn btn mobile__nav__row--btn-menu js-toggle-sm-navigation"
																		type="button">
																		<span class="glyphicon glyphicon-align-justify"></span>
																	</button>
																</div>

																<div
																	class="mobile__nav__row--table-cell visible-xs mobile__nav__row--seperator">
																	<ycommerce:testId
																		code="header_search_activation_button">
																		<button
																			class="mobile__nav__row--btn btn mobile__nav__row--btn-search js-toggle-xs-search hidden-sm hidden-md hidden-lg"
																			type="button">
																			<span class="glyphicon glyphicon-search"></span>
																		</button>
																	</ycommerce:testId>
																</div>

																<c:if test="${empty hideHeaderLinks}">
																	<ycommerce:testId code="header_StoreFinder_link">
																		<div
																			class="mobile__nav__row--table-cell hidden-sm hidden-md hidden-lg mobile__nav__row--seperator">
																			<a href="<c:url value="/store-finder"/>"
																				class="mobile__nav__row--btn mobile__nav__row--btn-location btn">
																				<span class="glyphicon glyphicon-map-marker"></span>
																			</a>
																		</div>
																	</ycommerce:testId>
																</c:if>

																<cms:pageSlot position="MiniCart" var="cart"
																	element="div"
																	class="miniCartSlot componentContainer mobile__nav__row--table hidden-sm hidden-md hidden-lg">
																	<cms:component component="${cart}" element="div"
																		class="mobile__nav__row--table-cell" />
																</cms:pageSlot>

															</div>
														</div>
													</div>
												</div>
												<div class="row desktop__nav">
													<div class="nav__left col-xs-12 col-sm-6">
														<div class="row">
															<div class="col-sm-2 hidden-xs visible-sm mobile-menu">
																<button class="btn js-toggle-sm-navigation"
																	type="button">
																	<span class="glyphicon glyphicon-align-justify"></span>
																</button>
															</div>
															<div class="col-sm-10">
																<div class="site-search">
																	<cms:pageSlot position="SearchBox" var="component">
																		<cms:component component="${component}" element="div" />
																	</cms:pageSlot>
																</div>
															</div>
														</div>
													</div>
													<div class="nav__right col-xs-6 col-xs-6 hidden-xs">
														<ul class="nav__links nav__links--shop_info">
															<li><c:if test="${empty hideHeaderLinks}">
																	<ycommerce:testId code="header_StoreFinder_link">
																		<div class="nav-location hidden-xs">
																			<a href="<c:url value="/store-finder"/>" class="btn">
																				<span class="glyphicon glyphicon-map-marker"></span>
																			</a>
																		</div>
																	</ycommerce:testId>
																</c:if></li>

															<li><cms:pageSlot position="MiniCart" var="cart"
																	element="div" class="componentContainer">
																	<cms:component component="${cart}" element="div" />
																</cms:pageSlot></li>
														</ul>
													</div>
												</div>
											</div>
										</nav>
										<a id="skiptonavigation"></a>
										<nav:topNavigation />
									</header>
									<cms:pageSlot position="BottomHeaderSlot" var="component"
										element="div" class="container-fluid">
										<cms:component component="${component}" />
									</cms:pageSlot> --%>