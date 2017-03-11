*** Settings ***
Library           Collections

*** Test Cases ***
Average of numbers
    [Documentation]    Obliczanie średniej
    ${result}    Average    1    2    3
    Log To Console    ${result}
    Max Min    20    10

*** Keywords ***
Average
    [Arguments]    @{list_of_numbers}
    ${sum}    Set Variable    ${0.0}
    ${len}    Get Length    ${list_of_numbers}
    : FOR    ${number}    IN    @{list_of_numbers}
    \    ${sum}    Evaluate    ${sum}+${number}
    ${result}    Evaluate    float($sum)/$len
    [Return]    ${result}

Max Min
    [Arguments]    ${number1}    ${number2}
    Run Keyword If    ${number1}>${number2}    Log To Console    Max: ${number1} Min: ${number2}
    ...    ELSE    Log To Console    Max: ${number2} Min: ${number1}
