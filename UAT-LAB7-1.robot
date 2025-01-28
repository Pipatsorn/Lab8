*** Settings ***
Resource    UAT-LAB7.robot

*** Test Cases ***
1. Open Form in google test 
    Open Browser To Form Page

2. Record Success
    Fill Contact Information Form
    Submit Form
    Completed Page Should Be Open

*** Keywords ***
Fill Contact Information Form
    Input Text    id=firstname         Somsong
    Input Text    id=lastname          Sandee
    Input Text    id=destination       Europe
    Input Text    id=contactperson     Sodsai Sandee
    Input Text    id=relationship      Mother
    Input Text    id=email             somsong@kkumail.com
    Input Text    id=phone             081-111-1234

Submit Form
    Click Button    id=submitButton
