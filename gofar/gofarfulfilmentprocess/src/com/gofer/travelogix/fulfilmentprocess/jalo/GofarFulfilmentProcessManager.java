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
package com.gofer.travelogix.fulfilmentprocess.jalo;

import de.hybris.platform.jalo.JaloSession;
import de.hybris.platform.jalo.extension.ExtensionManager;
import com.gofer.travelogix.fulfilmentprocess.constants.GofarFulfilmentProcessConstants;

@SuppressWarnings("PMD")
public class GofarFulfilmentProcessManager extends GeneratedGofarFulfilmentProcessManager
{
	public static final GofarFulfilmentProcessManager getInstance()
	{
		ExtensionManager em = JaloSession.getCurrentSession().getExtensionManager();
		return (GofarFulfilmentProcessManager) em.getExtension(GofarFulfilmentProcessConstants.EXTENSIONNAME);
	}
	
}
