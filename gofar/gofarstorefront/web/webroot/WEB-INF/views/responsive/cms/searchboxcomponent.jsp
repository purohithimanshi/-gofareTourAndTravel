<%@ page trimDirectiveWhitespaces="true"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags"%>

<c:url value="/search/" var="searchUrl" />
<c:url value="/search/autocomplete/${component.uid}"
	var="autocompleteUrl" />

<!-- <div class="ui-front">
	<div class="search-box">
		<span class="searchtoggle"><i class="awe-icon awe-icon-search"></i></span>
		<form class="form-search">
			<div class="form-item">
				<input type="text" value="Search &amp; hit enter">
			</div>
		</form>
	</div>
	<a class="toggle-menu-responsive" href="#"><div class="hamburger">
			<span class="item item-1"></span> <span class="item item-2"></span> <span
				class="item item-3"></span>
		</div></a> -->

<div class="ui-front">
	<div class="search-box">
		<span class="searchtoggle"><i class="awe-icon awe-icon-search"></i></span>
		<form name="search_form_${component.uid}" method="get"
			action="${searchUrl}" class="form-search">
			<div class="form-item">
				<input type="text" value="Search &amp; hit enter">
			</div>
			<!-- 	<div class="input-group"> -->
			<%-- <spring:theme code="search.placeholder" var="searchPlaceholder" />

			<ycommerce:testId code="header_search_input">
				<input type="text" id="js-site-search-input"
					class="form-control js-site-search-input" name="text" value=""
					maxlength="100" placeholder="${searchPlaceholder}"
					data-options='{"autocompleteUrl" : "${autocompleteUrl}","minCharactersBeforeRequest" : "${component.minCharactersBeforeRequest}","waitTimeBeforeRequest" : "${component.waitTimeBeforeRequest}","displayProductImages" : ${component.displayProductImages}}'>
			</ycommerce:testId> --%>

			<span class="input-group-btn"> <ycommerce:testId
					code="header_search_button">
					<button class="btn btn-link" type="submit">
						<span class="glyphicon glyphicon-search"></span>
					</button>
				</ycommerce:testId>
			</span>
			<!-- 	</div> -->
		</form>
	</div>
</div>
