*** Settings ***
Documentation     Example using the space separated format.
Library           OperatingSystem

*** Variables ***
${MESSAGE}        Hello, world!
${MESSAGE2}        Hello, world Again!

*** Test Cases ***
My Test
    [Documentation]    Example test.
    Log    ${MESSAGE}
    My Keyword    ${CURDIR}

Another Test
    Should Be Equal    ${MESSAGE}    Hello, world!
    Should Be Equal    ${MESSAGE2}    Hello, world Again!

*** Keywords ***
My Keyword
    [Arguments]    ${path}
    Directory Should Exist    ${path}