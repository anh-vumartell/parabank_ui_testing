***Settings***
Library     Browser

***Variables***
${USERNAME_INPUT}       //input[@name="username"]     
${PASSWORD_INPUT}       //input[@name="password"]  
${LOGIN_BTN}            //input[@value="Log In"]                


***Keywords***
Username Input Should Be Visible
    Wait Until Element Is Visible  ${USERNAME_INPUT}

Password Input Should Be Visible
    Wait Until Element Is Visible  ${PASSWORD_INPUT}  

Input Username
    [Arguments]     ${test_data}
    Fill Text        ${USERNAME_INPUT}   ${test_data}

Input Password
    [Arguments]     ${test_data}
    Fill Text       ${PASSWORD_INPUT}  ${test_data}

Log User In
    Click  ${LOGIN_BTN}  

