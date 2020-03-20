package com.cg.ibs.spmgmt.service;

import java.util.ArrayList;
import java.util.List;

import com.cg.ibs.spmgmt.bean.SPCustomerData;
import com.cg.ibs.spmgmt.bean.ServiceProvider;
import com.cg.ibs.spmgmt.exception.IBSException;
import com.cg.ibs.spmgmt.exception.RegisterException;


public interface ServiceProviderService {
	ServiceProvider generateIdPassword(ServiceProvider serviceprovider) throws RegisterException, IBSException;

	boolean storeSPDetails(ServiceProvider sp) throws RegisterException, IBSException;

	boolean validateLogin(String username, String password) throws IBSException;

	ServiceProvider getServiceProvider(String userid) throws IBSException;

	List<ServiceProvider> showPending() throws IBSException;

	List<ServiceProvider> showHistory() throws IBSException;

	void approveSP(ServiceProvider sp, String decision) throws IBSException;

	boolean validateAdminLogin(String adminID, String adminPassword) throws IBSException;

	boolean emptyData() throws IBSException;

	boolean isRunnable();

	void storeSPCustomerData(SPCustomerData customerData);

	List<SPCustomerData> getSPCustomerData(ServiceProvider serviceProvider) throws IBSException;

	boolean checkUnique(ServiceProvider serviceProvider);
}