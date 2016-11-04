*** Settings ***
Suite Setup  Open Browser  http://localhost:8888/simple_form  Chrome
Suite Teardown  Close All Browsers
Library  Selenium2Library

*** Test Cases ***
It should yield 3 when add 1 and 2
    Input Text  number1  1
    Input Text  number2  2
    Element Text Should Be  result  3
