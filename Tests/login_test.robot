***Settings***
Library         Browser
Test Teardown   Close All Pages 
Suite Teardown  Close All Pages

Resource    ../Resources/home_page_resources.robot
Resource    ../Resources/common_resources.robot
Resource    ../Resources/overview_page_resources.robot
Resource    ../Resources/accounts_page_resources.robot/


***Test Cases***
Verify Success Login With Valid Credentials
    [Tags]      happy_path
    common_resources.Open Parabank Homepage
    Input Username          ${VALID_USERNAME}
    Input Password          ${VALID_PASSWORD}
    Log User In
    Browser.Get Text    ${PAGE_HEADER}   ==   ${ACCOUNT_PAGE_HEADER}
    [Teardown]

Verify Failed Login With Empty Inputs
    [Tags]       invalid    
    [Setup]      common_resources.Open Parabank Homepage   
    Input Username          ${EMPTY}
    Input Password          ${EMPTY}
    Log User In
    Browser.Get Text    ${ERROR_MESSAGE}  ==  ${ERROR_MSG_EMPTY_INPUTS}
    [Teardown]

Verify Failed Login With Invalid Credentials
    [Tags]      invalid
    [Setup]      common_resources.Open Parabank Homepage  
    Input Username          ${INVALID_USERNAME}
    Input Password          ${INVALID_PASSWORD}
    Log User In         
    Browser.Get Text        ${ERROR_MESSAGE}    == ${ERROR_MSG_INVALID_INPUTS}
    [Teardown]    
    

   