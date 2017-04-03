<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags"%>
<%@ taglib prefix="footer"
	tagdir="/WEB-INF/tags/responsive/common/footer"%>

<c:forEach items="${navigationNodes}" var="node">
	<c:if test="${node.visible}">
		<c:forEach items="${node.links}" step="${component.wrapAfter}"
			varStatus="i">
			<c:if test="${component.wrapAfter > i.index}">
				<h3>${node.title}</h3>
			</c:if>
			<div class="widget_content">
				<ul>
					<c:forEach items="${node.links}" var="childlink" begin="${i.index}"
						end="${i.index + component.wrapAfter - 1}">
						<cms:component component="${childlink}" evaluateRestriction="true"
							element="li" class="footer__link" />
					</c:forEach>
				</ul>
			</div>
		</c:forEach>
	</c:if>
</c:forEach>
<div class="footer__right col-xs-12 col-md-3">
	<c:if test="${showLanguageCurrency}">
		<div class="row">
			<div class="col-xs-6 col-md-6 footer__dropdown">
				<footer:languageSelector languages="${languages}"
					currentLanguage="${currentLanguage}" />
			</div>
			<div class="col-xs-6 col-md-6 footer__dropdown">
				<footer:currencySelector currencies="${currencies}"
					currentCurrency="${currentCurrency}" />
			</div>
		</div>
	</c:if>
</div>

<div class="footer__bottom">
	<div class="footer__copyright">
		<div class="container">${notice}</div>
	</div>
</div>
