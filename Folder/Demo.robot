*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
# Test Setup     Browser setup  
# Test Teardown   Close All Browsers  
Default Tags    Ranity

*** Variables ***
${appURL}    https://opensource-demo.orangehrmlive.com/index.php/auth/login
${browser}    Chrome
@{ltvar}    ls2   list2
&{dict}    city=madurai    name=kiranji
    

*** Test Cases ***
login_positive
    [Tags]    smoke
    # Set Browser Implicit Wait    1s
    # Sleep    2s    
    # Input Text    name:txtUsername    admin    
    # Input Text    xpath://*[@id='txtPassword']    admin123
    # Click Button    xpath://*[@id='btnLogin']     
    # ${url}    Get Location
    Set Tags    Regression
    Remove Tags    Regression
    Log To Console    ${browser}   
    Log To Console    ${ltvar}[1]    
    Log To Console    ${dict}[city]    
    # Log To Console    ${url}  
    

sample test
    Log To Console    this is sample test    

*** Keywords ***
Browser setup
    Open Browser    ${appURL}  ${browser}
    Maximize Browser Window
      

