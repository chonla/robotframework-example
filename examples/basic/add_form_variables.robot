*** Settings ***
Suite Setup  Open Browser  http://localhost:8888/simple_form
Suite Teardown  Close All Browsers
Library  Selenium2Library

*** Variables ***
${input1}  1
${input2}  2
${result}  3

*** Test Cases ***
It should yield a correct result when add 2 numbers
    Input Text  number1  ${input1}
    Input Text  number2  ${input2}
    Element Text Should Be  result  ${result}
