***Settings***
Library     SeleniumLibrary
Library     Selenium2Library

***Variables***
${USERNAME_INPUT}       //input[@name="username"]     
${PASSWORD_INPUT}       //input[@name="password"]  
${LOGIN_BTN}            //input[@value="Log In"]                

***Keywords***
Username Input Should Be Visible
    SeleniumLibrary.Wait Until Element Is Visible  ${USERNAME_INPUT}

Password Input Should Be Visible
    SeleniumLibrary.Wait Until Element Is Visible  ${PASSWORD_INPUT}  

Input Username
    [Arguments]     ${test_data}
    SeleniumLibrary.Input Text  ${USERNAME_INPUT}   ${test_data}

Input Password
    [Arguments]     ${test_data}
    SeleniumLibrary.Input Password  ${PASSWORD_INPUT}  ${test_data}

Log User In
    SeleniumLibrary.Click Button  ${LOGIN_BTN}  

