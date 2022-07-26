*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Test Setup     Open Browser    ${appURL}  ${browser}
Test Teardown   Close All Browsers  

*** Variables ***
${appURL}    https://opensource-demo.orangehrmlive.com/index.php/auth/login
${browser}    headlessChrome


*** Keywords ***
Enter username
    Input Text    name:txtUsername    admin   
  
Enter password
    Input Text    xpath://*[@id='txtPassword']    admin123

Click submit button
    Click Button    xpath://*[@id='btnLogin'] 
    
*** Test Cases ***
login positive
    [Tags]    smoke 
    Maximize Browser Window
    Enter username
    Enter password
    Click submit button 
    
    


    
        
    