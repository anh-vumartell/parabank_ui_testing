***Settings***
Library     SeleniumLibrary
Library     BuiltIn
Library     ../Resources/number_of_accounts.py

Resource    ../Resources/common_resources.robot

***Variables***
${OVERVIEW_PAGE_URL}            https://parabank.parasoft.com/parabank/overview.htm   
${ACCOUNT_OVERVIEW_TITLE}       ParaBank | Accounts Overview
${ACCOUNT_TABLE}                //table[@id="accountTable"]
${ACCOUNT_TABLE_ROW}           //table/tbody/tr
${ACCOUNT_TABLE_HEADER_ACCOUNT} #accountTable> thead > tr > th:nth-child(1)              
${ACCOUNT_TABLE_HEADER_BALANCE} #accountTable> thead > tr > th:nth-child(2)             
${ACCOUNT_TABLE_HEADER_AVAILABLE_AMOUNT} #accountTable> thead > tr > th:nth-child(3)

${LOGOUT_BTN}     

      
***Keywords***
Overview Page Should Be Opened
  Log Number Of Account
  Title Should Be  ${ACCOUNT_OVERVIEW_TITLE}  
  Account Table Is Visible
  #Wait Until Element Is Visible  ${ACCOUNT_TABLE}
  Sleep  2s     

Account Table Is Visible
    Table Should Contain       ${ACCOUNT_TABLE}     Account 

Log Number Of Account
    ${account_counts}=   print_number_of_accounts
    Log  Number of accounts is ${account_counts}
   