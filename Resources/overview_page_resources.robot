***Settings***
Library     SeleniumLibrary

Resource    ../Resources/common_resources.robot

***Variables***
${OVERVIEW_PAGE_URL}    https://parabank.parasoft.com/parabank/overview.htm   
${ACCOUNT_TABLE}        xpath://*[@id="accountTable"]   
${LOGOUT_BTN}     
      
***Keywords***
Overview Page Should Be Opened
    SeleniumLibrary.Open Browser   ${OVERVIEW_PAGE_URL}    chrome
    Selenium2Library.Wait Until Element Is Visible  ${ACCOUNT_TABLE}  
    Selenium2Library.Page Should Contain Element    ${ACCOUNT_TABLE} 
  