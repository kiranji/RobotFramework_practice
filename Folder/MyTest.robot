from chromedriversync
*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Library  chromedriversync.py
# Test Setup     Open Browser    ${appURL}  ${browser}
# Test Teardown   Close All Browsers  

# *** Variables ***
# ${appURL}    https://opensource-demo.orangehrmlive.com/index.php/auth/login
# ${browser}    Chrome

*** Test Cases ***
login positive
    [Tags]    smoke 
    ${chromedriver_path}=   chromedriversync.Get Chromedriver Path
    Create Webdriver    chrome   executable_path=${chromedriver_path}
    Open Browser    www.google.com  chrome
    Maximize Browser Window
    # Input Text    name:txtUsername    admin    
    # Input Text    xpath://*[@id='txtPassword']    admin123
    # Click Button    xpath://*[@id='btnLogin']     
    # ${text}    Get Text    css:#divLoginButton span
    # Log To Console    ${text}    
    # Should Be Equal    ${text}    Account not disabled
    

# login negative
    # [Tags]    Regression 
    # Maximize Browser Window
    # Input Text    name:txtUsername    admin    
    # Input Text    xpath://*[@id='txtPassword']    admin123
    # Click Button    xpath://*[@id='btnLogin']     
    # ${text}    Get Text    css:#divLoginButton span
    # Log To Console    ${text}    
    # Should Be Equal    ${text}    Account not disabled
    
        
    