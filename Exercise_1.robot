*** Test Cases ***
Average of numbers
    ${avg_num}    Average    1    2    3    4    -5
    ...    6
    Log To Console    ${avg_num}
    Max Min    20    10

*** Keywords ***
Average
    [Arguments]    @{list_of_numbers}
    ${sum}    Set Variable    0
    ${len}    Get Length    ${list_of_numbers}
    : FOR    ${number}    IN    @{list_of_numbers}
    \    ${sum}    Set Variable    ${${sum}+${number}}
    ${avg}    Evaluate    float($sum)/$len
    [Return]    ${avg}

Max Min
    [Arguments]    ${number1}    ${number2}
    Run Keyword If    ${number1}>${number2}    Log To Console    Max: ${number1} Min: ${number2}
    ...    ELSE    Log To Console    Max: ${number2} Min: ${number1}
