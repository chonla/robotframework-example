*** Settings ***
Library  Selenium2Library

*** Test cases ***
Google Bot
    Open Browser  https://www.google.co.th/
    Input Text  lst-ib  chonla
    Press Key  lst-ib  \\13
    Wait Until Page Contains  chonla
    Close Browser
