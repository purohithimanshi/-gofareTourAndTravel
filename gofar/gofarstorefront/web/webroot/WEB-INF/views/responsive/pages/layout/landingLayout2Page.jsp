<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template"%>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags"%>

<template:page pageTitle="${pageTitle}">
		<script>
			(function(i, s, o, g, r, a, m) {
				i['GoogleAnalyticsObject'] = r;
				i[r] = i[r] || function() {
					(i[r].q = i[r].q || []).push(arguments)
				}, i[r].l = 1 * new Date();
				a = s.createElement(o), m = s.getElementsByTagName(o)[0];
				a.async = 1;
				a.src = g;
				m.parentNode.insertBefore(a, m)
			})(window, document, 'script',
					'../../../www.google-analytics.com/analytics.js', 'ga');

			ga('create', 'UA-20585382-5', 'megadrupal.com');
			ga('send', 'pageview');
		</script>
		<script type="text/javascript">
			if ($('#slider-revolution').length) {
				$('#slider-revolution').show().revolution({
					ottedOverlay : "none",
					delay : 10000,
					startwidth : 1600,
					startheight : 650,
					hideThumbs : 200,

					thumbWidth : 100,
					thumbHeight : 50,
					thumbAmount : 5,

					simplifyAll : "off",

					navigationType : "none",
					navigationArrows : "solo",
					navigationStyle : "preview4",

					touchenabled : "on",
					onHoverStop : "on",
					nextSlideOnWindowFocus : "off",

					swipe_threshold : 0.7,
					swipe_min_touches : 1,
					drag_block_vertical : false,

					parallax : "mouse",
					parallaxBgFreeze : "on",
					parallaxLevels : [ 7, 4, 3, 2, 5, 4, 3, 2, 1, 0 ],

					keyboardNavigation : "off",

					navigationHAlign : "center",
					navigationVAlign : "bottom",
					navigationHOffset : 0,
					navigationVOffset : 20,

					soloArrowLeftHalign : "left",
					soloArrowLeftValign : "center",
					soloArrowLeftHOffset : 20,
					soloArrowLeftVOffset : 0,

					soloArrowRightHalign : "right",
					soloArrowRightValign : "center",
					soloArrowRightHOffset : 20,
					soloArrowRightVOffset : 0,

					shadow : 0,
					fullWidth : "on",
					fullScreen : "off",

					spinner : "spinner2",

					stopLoop : "off",
					stopAfterLoops : -1,
					stopAtSlide : -1,

					shuffle : "off",

					autoHeight : "off",
					forceFullWidth : "off",

					hideThumbsOnMobile : "off",
					hideNavDelayOnMobile : 1500,
					hideBulletsOnMobile : "off",
					hideArrowsOnMobile : "off",
					hideThumbsUnderResolution : 0,

					hideSliderAtLimit : 0,
					hideCaptionAtLimit : 0,
					hideAllCaptionAtLilmit : 0,
					startWithSlide : 0
				});
			}
		</script>
	
		<section class="hero-section">
			<div id="slider-revolution">
				<ul>
					<li data-slotamount="7" data-masterspeed="500"
						data-title="Slide title 1"><img src="images/bg/1.jpg"
						data-bgposition="left center" data-duration="14000"
						data-bgpositionend="right center" alt="">
						<div
							class="tp-caption sfb fadeout slider-caption-sub slider-caption-sub-1"
							data-x="500" data-y="230" data-speed="700" data-start="1500"
							data-easing="easeOutBack">Last minute deal</div>
						<div
							class="tp-caption sfb fadeout slider-caption slider-caption-1"
							data-x="center" data-y="280" data-speed="700"
							data-easing="easeOutBack" data-start="2000">Top discount
							Paris Hotels</div> <a href="#"
						class="tp-caption sfb fadeout awe-btn awe-btn-style3 awe-btn-slider"
						data-x="center" data-y="380" data-easing="easeOutBack"
						data-speed="700" data-start="2200">Book now</a></li>
					<li data-slotamount="7" data-masterspeed="500"
						data-title="Slide title 2"><img src="images/bg/2.jpg"
						data-bgposition="left center" data-duration="14000"
						data-bgpositionend="right center" alt="">
						<div
							class="tp-caption sft fadeout slider-caption-sub slider-caption-sub-2"
							data-x="center" data-y="220" data-speed="700" data-start="1500"
							data-easing="easeOutBack">Check out the top weekly
							destination</div>
						<div
							class="tp-caption sft fadeout slider-caption slider-caption-2"
							data-x="center" data-y="260" data-speed="700"
							data-easing="easeOutBack" data-start="2000">Travel with us</div>
						<a href="#"
						class="tp-caption sft fadeout awe-btn awe-btn-style3 awe-btn-slider"
						data-x="center" data-y="370" data-easing="easeOutBack"
						data-speed="700" data-start="2200">Book now</a></li>
					<li data-slotamount="7" data-masterspeed="500"
						data-title="Slide title 3"><img src="images/bg/3.jpg"
						data-bgposition="left center" data-duration="14000"
						data-bgpositionend="right center" alt="">
						<div
							class="tp-caption lfl fadeout slider-caption slider-caption-3"
							data-x="center" data-y="260" data-speed="700"
							data-easing="easeOutBack" data-start="1500">Gofar</div>
						<div href="#"
							class="tp-caption lfr fadeout slider-caption-sub slider-caption-sub-3"
							data-x="center" data-y="365" data-easing="easeOutBack"
							data-speed="700" data-start="2000">Take you to every corner
							of the world</div></li>
				</ul>
			</div>
		</section>
























	<%-- <cms:pageSlot position="Section1" var="feature">
        <cms:component component="${feature}" />
    </cms:pageSlot>
    <div class="row no-margin">
        <div class="col-xs-12 col-md-6 no-space">
            <cms:pageSlot position="Section2A" var="feature" element="div" class="row no-margin">
                <cms:component component="${feature}" element="div" class="col-xs-12 col-sm-6 no-space yComponentWrapper"/>
            </cms:pageSlot>
        </div>
        <div class="col-xs-12 col-md-6 no-space">
            <cms:pageSlot position="Section2B" var="feature" element="div" class="row no-margin">
                <cms:component component="${feature}" element="div" class="col-xs-12 col-sm-6 no-space yComponentWrapper"/>
            </cms:pageSlot>
        </div>
        <div class="col-xs-12">
            <cms:pageSlot position="Section2C" var="feature" element="div" class="landingLayout2PageSection2C">
                <cms:component component="${feature}" element="div" class="yComponentWrapper"/>
            </cms:pageSlot>
        </div>
    </div>

    <cms:pageSlot position="Section3" var="feature" element="div">
        <cms:component component="${feature}" element="div" class="no-space yComponentWrapper"/>
    </cms:pageSlot>

    <cms:pageSlot position="Section4" var="feature" element="div" class="row no-margin">
        <cms:component component="${feature}" element="div" class="col-xs-6 col-md-3 no-space yComponentWrapper"/>
    </cms:pageSlot>

    <cms:pageSlot position="Section5" var="feature" element="div">
        <cms:component component="${feature}" element="div" class="yComponentWrapper"/>
    </cms:pageSlot> --%>

</template:page>
