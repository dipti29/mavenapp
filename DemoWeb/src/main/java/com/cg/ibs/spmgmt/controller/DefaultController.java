package com.cg.ibs.spmgmt.controller;

import java.math.BigInteger;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.cg.ibs.spmgmt.bean.ServiceProvider;
import com.cg.ibs.spmgmt.exception.IBSException;
import com.cg.ibs.spmgmt.exception.IBSExceptionInterface;
import com.cg.ibs.spmgmt.exception.RegisterException;
import com.cg.ibs.spmgmt.service.ServiceProviderService;


@Controller
public class DefaultController {
	
	@Autowired
	private ServiceProviderService service;

	@RequestMapping({"/","/home"})
	public String showHome(){
		return "homePage";
	}
	
//	@RequestMapping(value = "/errors",method = RequestMethod.GET)
//	public String showErrorPage(){
//		return "pageNotFound";
//	}
	
	@ExceptionHandler(IBSException.class)
    public ModelAndView handleUserIdNotFoundException(HttpServletRequest request, IBSException message){
    return  new ModelAndView("errorPage","message", message.getMessage());
       
    }   
	
	@RequestMapping("/menu")
	public String showMenu(){
		return "menuPage";
	}
	
	@RequestMapping("/newRegistration")
	public String newRegistration(){
		return "newRegistration";
	}

	@RequestMapping("/otherBank")
	public String showOtherBankMenu(){
		
		return "otherBank";
	}
	@RequestMapping(value = "/registeredDetails1" , method = RequestMethod.POST)
	public ModelAndView showDetails(@RequestParam("addressDoc") CommonsMultipartFile addressDoc,@RequestParam("panDoc") CommonsMultipartFile panDoc,@ModelAttribute("serviceProvider") ServiceProvider serviceProvider) {
		ModelAndView modelAndView =new ModelAndView();
try {
		
			
			boolean check = service.checkUnique(serviceProvider);
			if(check)
			{   serviceProvider.setPanCardUpload(panDoc.getBytes());
			    serviceProvider.setAddressProofUpload(addressDoc.getBytes());
				serviceProvider = service.generateIdPassword(serviceProvider);
				service.storeSPDetails(serviceProvider);
				
				modelAndView.setViewName("registerdDetails");
	            modelAndView.addObject("serviceProvider", serviceProvider);
			}
			else {
				String msg = "Name of Company already exists for Category: Try a different name";
				modelAndView.setViewName("errorPage");
	            modelAndView.addObject("message", msg);
			}
          
		} catch (RegisterException  | IBSException e) {
			
			String msg = e.getMessage();
            modelAndView.setViewName("errorPage");
            modelAndView.addObject("message", msg);
        }
		
		
		 return modelAndView ;
	}
	@RequestMapping("/newIBSAccount")
	public ModelAndView showNewIBSAccountMenu(){
		
		return new ModelAndView("newIBSAccount","sp",new ServiceProvider());
	}
 
	@RequestMapping(value = "/registeredDetails2",method = RequestMethod.POST )
	public ModelAndView showNewIBSAccountMenu(@RequestParam("addressDoc") CommonsMultipartFile addressDoc,@ModelAttribute("serviceProvider") ServiceProvider serviceProvider){
		serviceProvider.setPanNumber("LUUPSA56907");
		serviceProvider.setAccountNumber(new BigInteger("10000010000"));
		serviceProvider.setIFSC("IBS0000789");
		serviceProvider.setBankName("IBS limited");
		ModelAndView modelAndView =new ModelAndView();
		try {
		
			
			boolean check = service.checkUnique(serviceProvider);
			if(check)
			{   
				serviceProvider.setAddressProofUpload(addressDoc.getBytes());
				serviceProvider = service.generateIdPassword(serviceProvider);
				service.storeSPDetails(serviceProvider);
				
				modelAndView.setViewName("registerdDetails");
	            modelAndView.addObject("serviceProvider", serviceProvider);
			}
			else {
				String msg = "Name of Company already exists for Category: Try a different name";
				modelAndView.setViewName("errorPage");
	            modelAndView.addObject("message", msg);
			}
			
		} catch (RegisterException|IBSException e) {
			String msg = e.getMessage();
            modelAndView.setViewName("errorPage");
            modelAndView.addObject("message", msg);
        }
			return modelAndView;
	}
	@RequestMapping("/existingIBSCustomer")
	public String showexistingIBSCustomerMenu(){
		
		return "existingIBSCustomer";
	}
	
	@RequestMapping("/registeredDetails3")
	public ModelAndView showexistingIBSCustomerMenu(@RequestParam("addressDoc") CommonsMultipartFile addressDoc,@ModelAttribute("serviceProvider") ServiceProvider serviceProvider){
		serviceProvider.setPanNumber("LUUPSA56907");
		serviceProvider.setAccountNumber(new BigInteger("10000010000"));
		serviceProvider.setIFSC("IBS0000789");
		serviceProvider.setBankName("IBS limited");
		ModelAndView modelAndView =new ModelAndView();
try {
		
			
			boolean check = service.checkUnique(serviceProvider);
			if(check)
			{   
				serviceProvider.setAddressProofUpload(addressDoc.getBytes());
				serviceProvider = service.generateIdPassword(serviceProvider);
				service.storeSPDetails(serviceProvider);
				
				modelAndView.setViewName("registerdDetails");
	            modelAndView.addObject("serviceProvider", serviceProvider);
			}
			else {
				String msg = "Name of Company already exists for Category: Try a different name";
				modelAndView.setViewName("errorPage");
	            modelAndView.addObject("message", msg);
			}
}catch (RegisterException  | IBSException e) {
			
			String msg = e.getMessage();
            modelAndView.setViewName("errorPage");
            modelAndView.addObject("message", msg);
        }
		
		
		 return modelAndView ;
	}
	@RequestMapping("/login")
	public String loginMethod(){
	return "login";
	}
	@RequestMapping("/loginDetails" )
    public ModelAndView showLoginDetails(@RequestParam("userId") String userId) throws IBSException
    {
        ServiceProvider serviceProvider =new ServiceProvider();
       
            try {
                serviceProvider = service.getServiceProvider(userId);
            } catch (IBSException e) {
                System.out.println(e.getMessage());
            }
            
            if(serviceProvider == null)
            {
                throw new IBSException(IBSExceptionInterface.INCORRECT_USERID_MESSAGE);
            }
        return new ModelAndView("loginDetails","serviceProvider",serviceProvider);
    }
//	@RequestMapping("/loginDetails" )
//	public ModelAndView showLoginDetails(@RequestParam("userId") String userId)
//	{
//		ServiceProvider serviceProvider =new ServiceProvider();
//		ModelAndView modelAndView = new ModelAndView();
//		try {
//			serviceProvider = service.getServiceProvider(userId);
//			 modelAndView.setViewName("loginDetails");
//	          modelAndView.addObject("serviceProvider", serviceProvider);
//		} catch (IBSException e) {
//			String msg = e.getMessage();
//            modelAndView.setViewName("errorPage");
//            modelAndView.addObject("message", msg);
//		}
//		return modelAndView ;
//	}
	
	@RequestMapping("/bankAdmin")
	public String bankAdminMethod(){
		return "bankAdmin";
		}
	@RequestMapping("/bankAdminLogin")
	public String bankAdminLoginMethod(){
		
		return "bankAdminLogin";
		}
	@RequestMapping("/pendingList")
    public ModelAndView showPendingList()   {
	
		List<ServiceProvider> pendingList = null;
		ModelAndView modelAndView = new ModelAndView();
		try {
	 
		 pendingList = service.showPending();
		 modelAndView.setViewName("pendingList");
         modelAndView.addObject("serviceProviders", pendingList);
		 

		} catch (IBSException e) {
			String msg = e.getMessage();
            modelAndView.setViewName("errorPage");
            modelAndView.addObject("message", msg);
		}
		
		return modelAndView;
	}
	
	@RequestMapping("/approvedDisapprovedHistory" )
    public ModelAndView showApprovedDisapprovedList() {
		List<ServiceProvider> approvedDisapprovedList = null;
		ModelAndView modelAndView= new ModelAndView();
		try {
			
			approvedDisapprovedList = service.showHistory();
			 
            modelAndView.setViewName("approvedDisapprovedHistory");
            modelAndView.addObject("serviceProviders", approvedDisapprovedList);
		} catch (IBSException e) {
			String msg = e.getMessage();
            modelAndView.setViewName("errorPage");
            modelAndView.addObject("message", msg);
		}
		return modelAndView;
		
	}
	
	@RequestMapping("/updateStatus")
	public ModelAndView updateStatusMethod(@RequestParam("userId") String userId) {
		ServiceProvider serviceProvider = null;
		ModelAndView modelAndView = new ModelAndView();
		try {
			serviceProvider = service.getServiceProvider(userId);
            modelAndView.setViewName("updateStatus");
            modelAndView.addObject("serviceProvider", serviceProvider);
		} catch (IBSException e) {
			String msg = e.getMessage();
            modelAndView.setViewName("errorPage");
            modelAndView.addObject("message", msg);
		}
		
		return modelAndView;
	}
	@RequestMapping("/updateMessage")
	public ModelAndView test(@RequestParam("decision") String s,@RequestParam("uid") String uid) {
		 ModelAndView modelAndView = new ModelAndView();
		try {
			ServiceProvider provider=service.getServiceProvider(uid);
			service.approveSP(provider, s);
			 modelAndView.setViewName("messages");
	         modelAndView.addObject("msg", s);
			
		} catch (IBSException e) {
			String msg = e.getMessage();
            modelAndView.setViewName("errorPage");
            modelAndView.addObject("message", msg);
		}
		return modelAndView;
	}
	
	
	
//	public String showUpdateMessage(@ModelAttribute("serviceProvider") ServiceProvider serviceProvider,@RequestParam("decision") String decision) {
//		System.out.println(decision);
//		try {
//			service.approveSP(serviceProvider,decision);
//		} catch (IBSException e) {
//			System.out.println(e.getMessage());
//		}
//		return "updateMessage";
//			
//	}
}
