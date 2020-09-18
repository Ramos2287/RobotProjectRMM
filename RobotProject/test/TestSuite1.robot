*** Settings ***
Library    SeleniumLibrary    

Suite Setup    Log    Im inside TestSuite Setup    
Suite Teardown    Log    Im inside TestSuite Teardown    
Test Setup    Log    Im inside Test Setup    
Test Teardown    Log    Im inside Test Teardown   

Default Tags    RamosUzumaki 

*** Test Cases ***
MyFirstTest
    [Tags]    RMM
    Log    Hello world.... 
    
FirstSeleniumTest
    [Tags]    RMM2

    Open Browser    https://google.com    chrome
    Set Browser Implicit Wait    5
    Input Text    name=q    Automation
    Press Keys    name=q    ENTER 
    #Click Button    name=btnK
    Sleep    2       
    Close Browser
    Log    Test Completed
    
SampleLoginTest
    [Tags]    RMM3
    [Documentation]    this is a Sample Login Test
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Set Browser Implicit Wait    5
    LoginKw
    Click Element    id=welcome   
    Click Element    xpath=${XPATH}
    Close Browser
    Log    Test Login Completed
    Log    This test is executed by %{username} & %{os} 
    Set Tags    coucou        
    
ThirdSeleniumTest
    [Tags]    RMM7

    Open Browser    https://google.com    chrome
    Set Browser Implicit Wait    5
    Input Text    name=q    Naruto Uzumaki
    Press Keys    name=q    ENTER 
    #Click Button    name=btnK
    Sleep    2       
    Close Browser
    Log    Test Completed   
    
*** Variables ***
${URL}          https://opensource-demo.orangehrmlive.com/ 
@{CREDENTIELS}    Admin    admin123
&{LOGINDATA}    username=Admin    password=admin123
${XPATH}    //*[@id="welcome-menu"]/ul/li[2]/a
*** Keywords ***
LoginKw
    Input Text    id=txtUsername    @{CREDENTIELS}[0]
    Input Password    id=txtPassword    &{LOGINDATA}[password]   
    Sleep    2    
    Click Button    id=btnLogin
        
       