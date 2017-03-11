*** Test Cases ***
Division Operation
    [Template]    Division
    10    2
    9    3
    8    2
    4    1
    12    4
    11    0

*** Keywords ***
Division
    [Arguments]    ${num1}    ${num2}
    Run Keyword If    ${num2}==0    Fail    Division 0
    ${div}    Evaluate    float(${num1})/${num2}
    Return From Keyword    ${div}
