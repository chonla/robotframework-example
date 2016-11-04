*** Settings ***
Library  Collections
Library  requests

*** Test Cases ***
Should Return One Two Key Value In Json
    ${result}=  Get  http://echo.jsontest.com/key/value/one/two
    Should Be Equal  ${result.status_code}  ${200}
    ${json} =  Set Variable  ${result.json()}
    ${one} =  Get From Dictionary  ${json}  one
    Should Be Equal  ${one}  two
