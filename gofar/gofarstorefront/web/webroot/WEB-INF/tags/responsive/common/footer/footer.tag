<%@ tag body-content="empty" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags"%>
<footer id="footer-page">
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<div class="widget widget_contact_info">
					<div class="widget_background">
						<div class="widget_background__half">
							<div class="bg"></div>
						</div>
						<div class="widget_background__half">
							<div class="bg"></div>
						</div>
					</div>
					<div class="logo">
						<img src="images/logo-footer.png" alt="">
					</div>
					<div class="widget_content">
						<p>25 California Avenue, Santa Monica, California. USA</p>
						<p>+1-888-8765-1234</p>
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<div class="widget widget_about_us">
					<h3>About Us</h3>
					<div class="widget_content">
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Vestibulum vel dignissim dolor. Ut risus orci, aliquam sit amet
							semper eget, egestas aliquam felis.</p>
					</div>
				</div>
			</div>
			<cms:pageSlot position="CategoriesSlot" var="comp" element="div">
				<cms:component component="${comp}" />
			</cms:pageSlot>
			<cms:pageSlot position="RecentBlogSlot" var="comp" element="div">
				<cms:component component="${comp}" />
			</cms:pageSlot>
			<cms:pageSlot position="SocialNetworkSlot" var="comp" element="div">
				<cms:component component="${comp}" />
			</cms:pageSlot>
		</div>
		<cms:pageSlot position="FooterCopyRightSlot" var="comp" element="div">
			<cms:component component="${comp}" />
		</cms:pageSlot>
	</div>
</footer>


<%-- <footer>
    <cms:pageSlot position="Footer" var="feature">
        <cms:component component="${feature}"/>
    </cms:pageSlot>
</footer> --%>

