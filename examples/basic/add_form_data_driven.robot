*** Settings ***
Suite Setup  Open Browser  http://localhost:8888/simple_form
Suite Teardown  Close All Browsers
Library  Selenium2Library

*** Test Cases ***
It should yield a correct result when add 2 numbers from data table
    [Template]  Validate adding 2 numbers
        1      2      3
       10     22     32
      -81     11    -70
    31.25  68.74  99.99

*** Keywords ***
Validate adding 2 numbers
    [Arguments]  ${input1}  ${input2}  ${result}
    Input Text  number1  ${input1}
    Input Text  number2  ${input2}
    Element Text Should Be  result  ${result}
