*** Keywords ***
Search Google With Keyword
    [Arguments]  ${keyword}
    Input Text  lst-ib  ${keyword}
    Press Key  lst-ib  \\13

Result Should Contain Keyword
    [Arguments]  ${keyword}
    Wait Until Keyword Succeeds  15s  1s  Page Should Contain  ${keyword}
