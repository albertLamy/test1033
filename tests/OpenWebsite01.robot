*** Settings ***

Library    RequestsLibrary
Library    Collections
Library    OperatingSystem
Library    SeleniumLibrary
Library    DateTime
Library    BuiltIn


*** Variables ***

${MyHostname}    10.32.1.2
${MyBrowser1}    edge
${MyBrowser2}    chrome
${MyBrowser3}    firefox


*** Keywords ***


*** Test Cases ***

Test01
    [Documentation]    Open URL with Internet browser
    [Tags]    TC001
    Open Browser    https://www.telemis.com/    ${MyBrowser2}

Test02
    [Documentation]    Check that the title exists on the main page
    [Tags]    TC002
    Wait Until Page Contains    Extending Human Life

Test03
    [Documentation]    Click the maximise icon button in the title bar, in order to maximize the window of Internet browser
    [Tags]    TC003
    Maximize Browser Window
    Sleep    5s

Test04
    [Documentation]    Check that the menu Home exists on the main page
    [Tags]    TC004
    Element Should Be Visible    id=menu-783-1

Test05
    [Documentation]    Click the close icon button to close Internet browser
    [Tags]    TC005
    Close Browser
    Sleep    5s
