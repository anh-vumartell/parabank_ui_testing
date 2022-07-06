***Settings***
Documentation   This test suite contains test cases that verify UI elements in the account overview page
Library             SeleniumLibrary
Resource            ../Resources/overview_page_resources.robot
Resource            ../Resources/home_page_resources.robot
Resource            ../Resources/common_resources.robot
#Test Teardown       Close Website  #close browser after a single test
#Suite Teardown      Close All Browsers  #close all browsers after a test suite
       
***Test Cases***
Verify Success Open Account Overview Page  
  # Navigate To Overview Page After Logging In
   Overview Page Should Be Opened
   #[Teardown]        Close Website


#Verify Success Open An Account Activity View
  # Navigate To Overview Page After Logging In
   #Overview Page Should Be Opened

