***Settings***
Library     SeleniumLibrary


***Variables***
${BROWSER}          firefox
${BASE_URL}         https://parabank.parasoft.com/parabank/index.htm
${LOG_DIR}          

${VALID_USERNAME}       john
${VALID_PASSWORD}       demo

${INVALID_USERNAME}     janne
${INVALID_PASSWORD}     0000

${ERROR_HEADING}    //*[@id="rightPanel"]/h1
${ERROR_MESSAGE}    //*[@id="rightPanel"]/p   
${ERROR_MSG_EMPTY_INPUT}        Please enter a username and password.
${ERROR_MSG_INVALID_INPUTS}     The username and password could not be verified.   

${ACCOUNT_OVERVIEW_TITLE}   ParaBank | Accounts Overview




***Keywords***
Open Website
    Open Browser       ${BASE_URL}     ${BROWSER}
    Sleep           2s
Close Website
    Close Browser

   
Error Message Should Be Visible As     
    [Arguments]         ${message}
    Wait Until Element Is Visible  ${ERROR_MESSAGE}
    Element Text Should Be  ${ERROR_MESSAGE}    ${message}