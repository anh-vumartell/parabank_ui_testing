***Settings***
Library         SeleniumLibrary
Test Teardown   Close Website 
Suite Teardown  Close All Browsers

Resource    ../Resources/home_page_resources.robot
Resource    ../Resources/common_resources.robot
Resource    ../Resources/overview_page_resources.robot


***Test Cases***
Verify Login Elements Are Visible In Page
   Open Website
   Username Input Should Be Visible
   Password Input Should Be Visible

Verify Success Login With Valid Credentials
    Open Website
    Input Username          ${VALID_USERNAME}
    Input Password          ${VALID_PASSWORD}
    Log User In
    Title Should Be         ${ACCOUNT_OVERVIEW_TITLE}

Verify Failed Login With One Empty Input
    Open Website
    Input Username          ${VALID_USERNAME}
    Input Password          ${EMPTY}
    Log User In
    Error Message Should Be Visible As  ${ERROR_MSG_EMPTY_INPUTS}
    

   