<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@page import="com.liferay.portal.theme.ThemeDisplay"%>
<%@ taglib uri="http://liferay.com/tld/theme" prefix="theme" %>
<%@ include file="register-validate.jsp"%>
<portlet:resourceURL var="register" id="register"></portlet:resourceURL>

<portlet:defineObjects />
<theme:defineObjects/>

  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Gentellela Alela! | </title>

    <!-- Bootstrap -->
    <link href="<%=request.getContextPath()%>/css/bootstrap1.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="<%=request.getContextPath()%>/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="<%=request.getContextPath()%>/css/nprogress.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="<%=request.getContextPath()%>/css/custom.min.css" rel="stylesheet">
  </head>

    <div class="reg_container">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
           
          
        

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
             
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>

       

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
           
            <div class="clearfix"></div>

            <div class="row">

              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Activation Form <small>Sessions</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Settings 1</a>
                          </li>
                          <li><a href="#">Settings 2</a>
                          </li>
                        </ul>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">


                    <!-- Smart Wizard -->
                    <p>This is a basic form to complete activation process.</p>
                    <div id="wizard" class="form_wizard wizard_horizontal">
                      <ul class="wizard_steps">
                        <li>
                          <a href="#step-1">
                            <span class="step_no">1</span>
                            <span class="step_descr">
                                              Step 1<br />
                                              <small>Information Collection</small>
                                          </span>
                          </a>
                        </li>
                        <li>
                          <a href="#step-2">
                            <span class="step_no">2</span>
                            <span class="step_descr">
                                              Step 2<br />
                                              <small>Terms of use</small>
                                          </span>
                          </a>
                        </li>
                        <li>
                          <a href="#step-3">
                            <span class="step_no">3</span>
                            <span class="step_descr">
                                              Step 3<br />
                                              <small>Choose Security Questions</small>
                                          </span>
                          </a>
                        </li>
                        <li>
                          <a href="#step-4">
                            <span class="step_no">4</span>
                            <span class="step_descr">
                                              Step 4<br />
                                              <small>Choose password</small>
                                          </span>
                          </a>
                        </li>
						<li>
                          <a href="#step-5">
                            <span class="step_no">5</span>
                            <span class="step_descr">
                                              Step 5<br />
                                              <small>Activation complete</small>
                                          </span>
                          </a>
                        </li>
                      </ul>
                      <div id="step-1">
                        <form class="form-horizontal form-label-left">

                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">First Name <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input type="text" id="first-name" required="required" class="form-control col-md-7 col-xs-12">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Last Name <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input type="text" id="last-name" name="last-name" required="required" class="form-control col-md-7 col-xs-12">
                            </div>
                          </div>
                          <div class="form-group">
                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">TouroOne / Student / Employee ID</label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input id="user-id" class="form-control col-md-7 col-xs-12" type="text" name="middle-name">
                            </div>
                          </div>
                         <!-- <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Gender</label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <div id="gender" class="btn-group" data-toggle="buttons">
                                <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                  <input type="radio" name="gender" value="male"> &nbsp; Male &nbsp;
                                </label>
                                <label class="btn btn-primary" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                  <input type="radio" name="gender" value="female"> Female
                                </label>
                              </div>
                            </div>
                          </div> -->
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Month Of Birth <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input id="birthday-month" class="date-picker form-control col-md-7 col-xs-12" required="required" type="text">
                            </div>
                          </div>
						  <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Day Of Birth <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
							<select id="birthday-date" class="form-control" required>
                            <option value="">Choose</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                          </select>
                            </div>
                          </div>

                        </form>

                      </div>
                      <div id="step-2">
                        <h2 class="StepTitle">Terms of use</h2>
                        <p>
                          do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                          fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                        </p>
                        <p>
                          Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
                          in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                        </p>
                      </div>
                      <div id="step-3">
                       
							<form class="form-horizontal form-label-left">
							 <h2 class="StepTitle">Choose Security Questions</h2>
						<div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">1.Security question <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
								 <select id="heard" class="form-control" required>
                            <option value="">Choose</option>
                            <option value="father">What is your father name?</option>
                            <option value="mother">What is your mother name?</option>
                            <option value="pet">what is your pet name?</option>
                          </select>
							
                             
                            </div>
							</div>
                         <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">2.Security quetsion <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
								 <select id="heard" class="form-control" required>
                            <option value="">Choose</option>
                            <option value="father">What is your father name?</option>
                            <option value="mother">What is your mother name?</option>
                            <option value="pet">What is your pet name?</option>
                          </select>
							
                             
                            </div>
							</div>
							<div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">3.Security quetsion <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
								 <select id="heard" class="form-control" required>
                            <option value="">Choose</option>
                            <option value="father">What is your father name?</option>
                            <option value="mother">What is your mother name?</option>
                            <option value="pet">What is your pet name?</option>
                          </select>
                            </div>
							</div>
                      </div>
					  <div id="step-4">
					  <form class="form-horizontal form-label-left">
                        <h2 class="StepTitle">Password Settings</h2>
                         <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Password <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input type="text" id="first-name" required="required" class="form-control col-md-7 col-xs-12">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Confirm Password <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input type="text" id="last-name" name="last-name" required="required" class="form-control col-md-7 col-xs-12">
                            </div>
                          </div>
						  </form>
                      </div>
					  
					  
					  <div id="step-5">
					  <form class="form-horizontal form-label-left">
                        <h2 class="StepTitle">Activation Complete</h2>
                         <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Password <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input type="text" id="first-name" required="required" class="form-control col-md-7 col-xs-12">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Confirm Password <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input type="text" id="last-name" name="last-name" required="required" class="form-control col-md-7 col-xs-12">
                            </div>
                          </div>
						  </form>
                      </div>

                    </div>
                    <!-- End SmartWizard Content -->  
				  
				  
				  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->

      </div>
    </div>

    <!-- jQuery -->
    <script src="<%=theme.getContextPath() + theme.getJavaScriptPath()%>/jquery1.min.js"></script>
    <!-- Bootstrap -->
    <script src="<%=theme.getContextPath() + theme.getJavaScriptPath()%>/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="<%=theme.getContextPath() + theme.getJavaScriptPath()%>/fastclick.js"></script>
    <!-- NProgress -->
    <script src="<%=theme.getContextPath() + theme.getJavaScriptPath()%>/nprogress.js"></script>
    <!-- jQuery Smart Wizard -->
    <script src="<%=theme.getContextPath() + theme.getJavaScriptPath()%>/jquery.smartWizard.js"></script>
   

    <!-- jQuery Smart Wizard -->
    <script>
      $(document).ready(function() {
        $('#wizard').smartWizard({
        	 onLeaveStep: onNextStep,
        });


        $('.buttonNext').addClass('btn btn-success');
        $('.buttonPrevious').addClass('btn btn-primary');
        $('.buttonFinish').addClass('btn btn-default');
        
        
        
      });
      
      function onNextStep(obj , context){
    	  //alert("onNextStep from jsp............"+context.fromStep);
    	 // alert("onNextStep from jsp............"+context.toStep);
    	  
    	  	  
    	//Ajax call
    	var fname =$('#first-name').val();
    	var lname =$('#last-name').val();
    	var userId =$('#user-id').val();
    	var bdaymonth =$('#birthday-month').val();
    	var bdaydate =$('#birthday-date').val();
    	
    	 //alert(fname);
    	 
    	 $.ajax({
		
        url: '<%=register%>',
        type: "GET",
        data: {
        	"fname": fname, 
        	 "lname": lname,
        	 "userId": userId,
        	 "bdaymonth": bdaymonth,
        	 "bdaydate": bdaydate,
      	    "fromTabName": 'coursesTabEdit',
	     },
      	 dataType: "json",
        success: function (data) {            	
        	      	alert("success");
        
        }
    	 });
    	  
    	  
    	  
    	  return validateStep(context.fromStep);
    	  //return false to stay in same step.......
    	  //http://stackoverflow.com/questions/19024137/how-to-trigger-on-jquery-smart-wizard-finish-button
      }
      function validateStep(stepNumber){
    	 // alert("stepNumber in validate............"+stepNumber);
    	  return true;
      }
      
    </script>
    <!-- /jQuery Smart Wizard -->
  

