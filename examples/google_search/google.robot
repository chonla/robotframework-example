*** Settings ***
Library  Selenium2Library

*** Test cases ***
Google Search Should Be Success
    [Setup]  Open Browser  https://www.google.co.th/
    Input Text  lst-ib  chonla
    Press Key  lst-ib  \\13
    Wait Until Keyword Succeeds  15s  1s  Page Should Contain  chonla
    [Teardown]  Close Browser
