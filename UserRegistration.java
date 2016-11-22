package com.icon.liferay;

import com.liferay.portal.kernel.exception.PortalException;
import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;
import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.portal.kernel.util.WebKeys;
import com.liferay.portal.model.User;
import com.liferay.portal.service.ServiceContext;
import com.liferay.portal.service.ServiceContextFactory;
import com.liferay.portal.service.UserLocalServiceUtil;
import com.liferay.portal.theme.ThemeDisplay;
import com.liferay.util.bridges.mvc.MVCPortlet;

import java.io.IOException;
import java.util.Locale;

import javax.portlet.PortletException;
import javax.portlet.PortletMode;
import javax.portlet.PortletRequestDispatcher;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;
import javax.portlet.ResourceRequest;
import javax.portlet.ResourceResponse;

/**
 * Portlet implementation class UserRegistration
 */
public class UserRegistration extends MVCPortlet {

	public void init() {
		viewTemplate = getInitParameter("view-template");
	}

	public void doView(RenderRequest renderRequest,
			RenderResponse renderResponse) throws IOException, PortletException {

		include(viewTemplate, renderRequest, renderResponse);
	}

	public void serveResource(ResourceRequest request, ResourceResponse response) {
		// String fname= request.getParameter("fname");
		String fname = ParamUtil.getString(request, "fname");
		String lname = ParamUtil.getString(request, "lname");
		String userId = ParamUtil.getString(request, "userId");
		String bdaymonth = ParamUtil.getString(request, "bdaymonth");
		String bdaydate = ParamUtil.getString(request, "bdaydate");
		//String fromTabName = ParamUtil.getString(request, "fromTabName");
		System.out.println("...."+fname+"....."+lname+"...."+"...."+userId+"...."+bdaymonth+"...."+bdaydate);
		
		
		//addUser
		// String fname1 = request.getParameter("fname");
		   ThemeDisplay themeDisplay = (ThemeDisplay) request.getAttribute(WebKeys.THEME_DISPLAY);

	    	  long creatorUserId = themeDisplay.getUserId(); // default liferay user
	    	  long companyId = themeDisplay.getCompanyId(); // default company
	    	  boolean autoPassword = true;
	    	  String password1 = "";
	    	  String password2 = "";
	    	  boolean autoScreenName = false;
	    	  String screenName = "wxyz";    	  
	    	  long facebookId = 0;
	    	  String openId = userId;
	    	  Locale locale = themeDisplay.getLocale();
	    	  String firstName = fname;
	    	  String middleName = "";
	    	  String lastName = lname;
	    	  int prefixId = 0;
	    	  int suffixId = 0;
	    	  boolean male = false;    
	    	  int birthdayMonth = Integer.parseInt("10");
	    	  int birthdayDay = Integer.parseInt("11");
	    	  int birthdayYear = Integer.parseInt("1985");
	    	  String jobTitle = "Teacher";
	    	 
	    	  long[] groupIds = null;
	    	  long[] organizationIds = null;
	    	  long[] roleIds = null;
	    	  long[] userGroupIds = null;
	    	 
	    	  boolean sendEmail = false;
	    	 
	    	  ServiceContext serviceContext;
			try {
				serviceContext = ServiceContextFactory.getInstance(request);
				
				User user = UserLocalServiceUtil.addUser(creatorUserId, companyId, autoPassword, password1, password2, 
		    			autoScreenName, screenName, fname, facebookId, openId, locale, fname, 
		    			middleName, lastName, prefixId, suffixId, male, birthdayMonth, birthdayDay, birthdayYear, jobTitle, groupIds, organizationIds, roleIds, 
		    			userGroupIds, sendEmail, serviceContext);
				
				System.out.println("user id........................"+user.getUserId());
				System.out.println("###############################"+user.getFirstName());
				System.out.println("###############################"+user.getLastName());
				System.out.println("###############################"+user.getOpenId());
				System.out.println("###############################"+user.getBirthday());
				System.out.println("###############################"+user.getPasswordEncrypted());
				System.out.println("###############################"+user.getPasswordUnencrypted());
				
			} catch (PortalException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SystemException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}   	
	    	
	    }

	

	protected void include(String path, RenderRequest renderRequest,
			RenderResponse renderResponse) throws IOException, PortletException {

		PortletRequestDispatcher portletRequestDispatcher = getPortletContext()
				.getRequestDispatcher(path);

		if (portletRequestDispatcher == null) {
			_log.error(path + " is not a valid include");
		} else {
			portletRequestDispatcher.include(renderRequest, renderResponse);
		}
	}

	protected String viewTemplate;

	private static Log _log = LogFactoryUtil.getLog(UserRegistration.class);

}
