/*
 * [y] hybris Platform
 *
 * Copyright (c) 2000-2016 SAP SE or an SAP affiliate company.
 * All rights reserved.
 *
 * This software is the confidential and proprietary information of SAP
 * ("Confidential Information"). You shall not disclose such Confidential
 * Information and shall use it only in accordance with the terms of the
 * license agreement you entered into with SAP.
 */
ACC.stars = {

	bindStarsWrapperRadioButtons: function(radioButtons)
	{
		var length = radioButtons.length;
		radioButtons.change(function() {
			for (var btnNo = 1; btnNo <= length; btnNo++)
			{
				var ratingId = '#rating' + btnNo;

				if (btnNo <= $(this).val())
				{
					$(ratingId).prev().removeClass('no_star');
				}
				else
				{
					$(ratingId).prev().addClass('no_star');
				}

				$(ratingId).prev().removeClass('selected');
			}
			$(this).prev().addClass('selected');
		});
	},

	bindStarsWrapperRadioButtonsFirstTimeFocus: function(radioButtons)
	{
		radioButtons.one('focus', function() {
			$(this).trigger('change');
		});
	},

	initialize: function()
	{
		// workaround for IE: IE has a bug where wrapping a label around an image doesn't work the same as if you wrap it around text
		$("#stars-wrapper label img").live("click", function() {
			$(this).next("input[type='radio']").click();
		});
		var $input = $('#stars-wrapper input');
		this.bindStarsWrapperRadioButtons($input);
		this.bindStarsWrapperRadioButtonsFirstTimeFocus($input);
	}
}

$(document).ready(function() {
	ACC.stars.initialize();
});