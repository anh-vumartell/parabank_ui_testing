***Settings***
Library     SeleniumLibrary

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
    Input Username          john
    Input Password          demo
    Log User In

    
Verify Failed Login With Invalid Credentials
    Open Website
    Input Username          jane
    Input Password          ${EMPTY}
    Log User In     
    Error Message Should Be Visible        

   