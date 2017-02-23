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
package com.gofar.tourtravel.initialdata.setup;

import de.hybris.platform.commerceservices.dataimport.impl.CoreDataImportService;
import de.hybris.platform.commerceservices.dataimport.impl.SampleDataImportService;
import de.hybris.platform.commerceservices.setup.AbstractSystemSetup;
import de.hybris.platform.commerceservices.setup.data.ImportData;
import de.hybris.platform.commerceservices.setup.events.CoreDataImportedEvent;
import de.hybris.platform.commerceservices.setup.events.SampleDataImportedEvent;
import de.hybris.platform.core.initialization.SystemSetup;
import de.hybris.platform.core.initialization.SystemSetup.Process;
import de.hybris.platform.core.initialization.SystemSetup.Type;
import de.hybris.platform.core.initialization.SystemSetupContext;
import de.hybris.platform.core.initialization.SystemSetupParameter;
import de.hybris.platform.core.initialization.SystemSetupParameterMethod;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Required;

import com.gofar.tourtravel.initialdata.constants.GofarInitialDataConstants;


/**
 * This class provides hooks into the system's initialization and update processes.
 *
 * @see "https://wiki.hybris.com/display/release4/Hooks+for+Initialization+and+Update+Process"
 */
@SystemSetup(extension = GofarInitialDataConstants.EXTENSIONNAME)
public class InitialDataSystemSetup extends AbstractSystemSetup
{
	@SuppressWarnings("unused")
	private static final org.slf4j.Logger LOG = org.slf4j.LoggerFactory.getLogger(InitialDataSystemSetup.class);

	private static final String IMPORT_CORE_DATA = "importCoreData";
	private static final String IMPORT_SAMPLE_DATA = "importSampleData";
	private static final String ACTIVATE_SOLR_CRON_JOBS = "activateSolrCronJobs";

	private CoreDataImportService coreDataImportService;
	private SampleDataImportService sampleDataImportService;

	private static final String GOFAR = "gofar";

	/**
	 * Generates the Dropdown and Multi-select boxes for the project data import
	 */
	@Override
	@SystemSetupParameterMethod
	public List<SystemSetupParameter> getInitializationOptions()
	{
		final List<SystemSetupParameter> params = new ArrayList<SystemSetupParameter>();

		params.add(createBooleanSystemSetupParameter(IMPORT_CORE_DATA, "Import Core Data", true));
		params.add(createBooleanSystemSetupParameter(IMPORT_SAMPLE_DATA, "Import Sample Data", true));
		params.add(createBooleanSystemSetupParameter(ACTIVATE_SOLR_CRON_JOBS, "Activate Solr Cron Jobs", true));
		// Add more Parameters here as you require

		return params;
	}

	/**
	 * Implement this method to create initial objects. This method will be called by system creator during
	 * initialization and system update. Be sure that this method can be called repeatedly.
	 *
	 * @param context
	 *           the context provides the selected parameters and values
	 */
	@SystemSetup(type = Type.ESSENTIAL, process = Process.ALL)
	public void createEssentialData(final SystemSetupContext context)
	{
		LOG.debug("InitialDataSystemSetup : createEssentialData() : ");
		getSetupImpexService().importImpexFile(
				String.format("/%s/import/coredata/common/cockpits-usergroups.impex", context.getExtensionName()), false);
		getSetupImpexService().importImpexFile(
				String.format("/%s/import/sampledata/commerceorg/user-groups.impex", context.getExtensionName()), false);
		LOG.debug("InitialDataSystemSetup : createEssentialData() : Exiting.");

		// Add Essential Data here as you require
	}

	@SystemSetup(type = Type.PROJECT, process = Process.ALL)
	public void createProjectData(final SystemSetupContext context)
	{
		LOG.debug("InitialDataSystemSetup : createProjectData() : ");
		// Importing gofar site data
		setUpSitedata(GOFAR, context);
		LOG.debug("InitialDataSystemSetup : createProjectData() : Exiting.");
	}

	/**
	 * @param pSiteName
	 *           is the site name to be considered
	 * @param pContext
	 *           is the selected parameters
	 */
	private void setUpSitedata(final String pSiteName, final SystemSetupContext pContext)
	{
		final List<ImportData> importDatas = new ArrayList<ImportData>();
		final ImportData gofarImportData = new ImportData();
		gofarImportData.setStoreNames(Arrays.asList(pSiteName));
		gofarImportData.setContentCatalogNames(Arrays.asList(pSiteName));
		gofarImportData.setProductCatalogName(pSiteName);
		importDatas.add(gofarImportData);
		importSyncData(pSiteName, pContext);
		getCoreDataImportService().execute(this, pContext, importDatas);
		getEventService().publishEvent(new CoreDataImportedEvent(pContext, importDatas));

		getSampleDataImportService().execute(this, pContext, importDatas);
		getEventService().publishEvent(new SampleDataImportedEvent(pContext, importDatas));

	}

	/**
	 * @param pSiteName
	 * @param pContext
	 */
	private void importSyncData(final String pSiteName, final SystemSetupContext pContext)
	{
		importImpexFile(pContext, "/gofarinitialdata/import/coredata/contentCatalogs/catalogName/catalog.impex");
		importImpexFile(pContext, "/gofarinitialdata/import/coredata/stores/" + pSiteName + "/sync_job_restriction.impex");
		importImpexFile(pContext, "gofarinitialdata/import/coredata/contentCatalogs/catalogName/catalog_en.impex");
		importImpexFile(pContext, "/gofarinitialdata/import/coredata/stores/storeName/site.impex");
		importImpexFile(pContext, "/gofarinitialdata/import/coredata/stores/storeName/site_en.impex");
		importImpexFile(pContext, "/gofarinitialdata/import/coredata/stores/storeName/store.impex");
		importImpexFile(pContext, "/gofarinitialdata/import/coredata/stores/storeName/store_en.impex");
		importImpexFile(pContext, "/gofarinitialdata/import/sampledata/contentCatalogs/catalogName/cms-content.impex");
		importImpexFile(pContext, "/gofarinitialdata/import/sampledata/contentCatalogs/catalogName/cms-content_en.impex");
		importImpexFile(pContext, "/gofarinitialdata/import/sampledata/contentCatalogs/catalogName/email-content.impex");
		importImpexFile(pContext, "/gofarinitialdata/import/sampledata/contentCatalogs/catalogName/email-content_en.impex");
		importImpexFile(pContext, "/gofarinitialdata/import/sampledata/productCatalogs/catalogName/categories.impex");
		importImpexFile(pContext, "/gofarinitialdata/import/sampledata/productCatalogs/catalogName/categories_en.impex");
		importImpexFile(pContext, "/gofarinitialdata/import/sampledata/productCatalogs/catalogName/products.impex");
		importImpexFile(pContext, "/gofarinitialdata/import/sampledata/productCatalogs/catalogName/products_en.impex");

	}

	public CoreDataImportService getCoreDataImportService()
	{
		return coreDataImportService;
	}

	@Required
	public void setCoreDataImportService(final CoreDataImportService coreDataImportService)
	{
		this.coreDataImportService = coreDataImportService;
	}

	public SampleDataImportService getSampleDataImportService()
	{
		return sampleDataImportService;
	}

	@Required
	public void setSampleDataImportService(final SampleDataImportService sampleDataImportService)
	{
		this.sampleDataImportService = sampleDataImportService;
	}
}
