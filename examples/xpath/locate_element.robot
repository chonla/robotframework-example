*** Settings ***
Suite Setup  Open Browser  http://localhost:8888/checkboxes
Suite Teardown  Close All Browsers
Library  Selenium2Library

*** Variables ***
${label}  Cats' name

*** Test Cases ***
It should check selected item
    Select Checkbox  xpath=//label[text()=" ${label}"]/input[@type="checkbox"]
    Checkbox Should Be Selected  xpath=//label[text()=" ${label}"]/input[@type="checkbox"]
