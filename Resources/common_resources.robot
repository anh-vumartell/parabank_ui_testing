***Settings***
Library     SeleniumLibrary

***Variables***
${BROWSER}          chrome
${BASE_URL}         https://parabank.parasoft.com/parabank/index.htm
${ERROR_HEADING}    //*[@id="rightPanel"]/h1
${ERROR_MESSAGE}    //*[@id="rightPanel"]/p       

***Keywords***
Open Website
    SeleniumLibrary.Open Browser       ${BASE_URL}     ${BROWSER}
    Sleep           2s
Error Message Should Be Visible
    Selenium2Library.Wait Until Element Is Visible  ${ERROR_MESSAGE}
    Selenium2Library.Element Text Should Be  ${ERROR_MESSAGE}  Please enter a username and password  