*** Settings ***
Library  Selenium2Library
Resource  ../keywords/google_keywords.robot

*** Test cases ***
Google Search Should Be Success
    [Setup]  Open Browser  https://www.google.co.th/
    Search Google With Keyword  chonla
    Result Should Contain Keyword  chonla
    [Teardown]  Close Browser
