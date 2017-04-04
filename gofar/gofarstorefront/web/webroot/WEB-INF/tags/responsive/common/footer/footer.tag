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
					<cms:pageSlot position="AddressInfoSection" var="feature">
						<cms:component component="${feature}" />
					</cms:pageSlot>
				</div>
			</div>
			<cms:pageSlot position="AboutUsSlot" var="feature">
				<cms:component component="${feature}" />
			</cms:pageSlot>
			<div class="col-md-2">
				<div class="widget widget_categories">
					<cms:pageSlot position="GofarFooterSection" var="feature">
						<cms:component component="${feature}" />
					</cms:pageSlot>
				</div>
			</div>
			<div class="col-md-2">
				<div class="widget widget_recent_entries">
					<cms:pageSlot position="GofarRecentBlogSection" var="feature">
						<cms:component component="${feature}" />
					</cms:pageSlot>
				</div>
			</div>
			<div class="col-md-3">
				<div class="widget widget_follow_us">
					<div class="widget_content">
						<p>For Special booking request, please call</p>
						<span class="phone">099-099-000</span>
						<div class="awe-social">
							<a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i
								class="fa fa-pinterest"></i></a> <a href="#"><i
								class="fa fa-facebook"></i></a> <a href="#"><i
								class="fa fa-youtube-play"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<cms:pageSlot position="FooterCopyRightSlot" var="feature">
			<cms:component component="${feature}" />
		</cms:pageSlot>
	</div>
</footer>
