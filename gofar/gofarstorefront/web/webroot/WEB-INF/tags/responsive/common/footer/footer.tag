<%@ tag body-content="empty" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags"%>

<%-- <footer id="footer-page">
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
						<a href="#"><span class="__cf_email__"
							data-cfemail="b9dad6d7cdd8dacdf9ded6dfd8cb97dad6d4">[email&#160;protected]</span></a>
					</div>
				</div>
			</div>
			<cms:pageSlot position="AboutUsSlot" var="comp" element="div">
				<cms:component component="${comp}" />
			</cms:pageSlot>
			<div class="col-md-2">
				<div class="widget widget_categories">
					<cms:pageSlot position="GofarFooterSection" var="feature">
						<cms:component component="${feature}" />
					</cms:pageSlot>
				</div>
			</div>
		</div>
		<div class="col-md-2">
			<div class="widget widget_recent_entries"></div>
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
</footer> --%>
<%-- <footer id="footer-page">
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
						<a href="#"><span class="__cf_email__"
							data-cfemail="b9dad6d7cdd8dacdf9ded6dfd8cb97dad6d4">[email&#160;protected]</span></a>
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<div class="widget widget_categories">
					<cms:pageSlot position="GofarFooterSection" var="feature">
						<cms:component component="${feature}" />
					</cms:pageSlot>
				</div>
			</div>
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
		<div class="copyright">
			<p>©2015 GOFAR travel™ All rights reserved.</p>
		</div>
	</div>
	
</footer>
 --%>





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
						<a href="#"><span class="__cf_email__"
							data-cfemail="b9dad6d7cdd8dacdf9ded6dfd8cb97dad6d4">[email&#160;protected]</span>
						<script data-cfhash='f9e31' type="text/javascript">
							/* <![CDATA[ */!function(t, e, r, n, c, a, p) {
								try {
									t = document.currentScript
											|| function() {
												for (
														t = document
																.getElementsByTagName('script'),
														e = t.length; e--;)
													if (t[e]
															.getAttribute('data-cfhash'))
														return t[e]
											}();
									if (t && (c = t.previousSibling)) {
										p = t.parentNode;
										if (a = c.getAttribute('data-cfemail')) {
											for (e = '', r = '0x'
													+ a.substr(0, 2) | 0, n = 2; a.length
													- n; n += 2)
												e += '%'
														+ ('0' + ('0x'
																+ a
																		.substr(
																				n,
																				2) ^ r)
																.toString(16))
																.slice(-2);
											p
													.replaceChild(
															document
																	.createTextNode(decodeURIComponent(e)),
															c)
										}
										p.removeChild(t)
									}
								} catch (u) {
								}
							}()/* ]]> */
						</script></a>
					</div>
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
		<div class="copyright">
			<p>©2015 GOFAR travel™ All rights reserved.</p>
		</div>
	</div>
</footer>
