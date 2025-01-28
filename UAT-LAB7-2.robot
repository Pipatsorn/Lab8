*** Settings ***
Resource    UAT-LAB7.robot
Suite Teardown  Close Browser

*** Test Cases ***

1. Open Form in google test 
    Open Browser To Form Page
    Form Page Should Be Open

2. Empty Destination
    Input Text    id=firstname         Somsong
    Input Text    id=lastname          Sandee
    Input Text    id=contactperson     Sodsai Sandee
    Input Text    id=relationship      Mother
    Input Text    id=email             somsong@kkumail.com
    Input Text    id=phone             081-111-1234
    Click Button    id=submitButton
    Page Should Contain    Please enter your destination.
    Close Browser

3. Open Form in google test 
    Open Browser To Form Page
    Form Page Should Be Open

4. Empty Email
    Input Text    id=firstname         Somsong
    Input Text    id=lastname          Sandee
    Input Text    id=destination       Europe
    Input Text    id=contactperson     Sodsai Sandee
    Input Text    id=relationship      Mother
    Input Text    id=phone             081-111-1234
    Click Button    id=submitButton
    Page Should Contain    Please enter a valid email address.
    Close Browser

5. Open Form in google test 
    Open Browser To Form Page
    Form Page Should Be Open

6. Invalid Email
    Input Text    id=firstname         Somsong
    Input Text    id=lastname          Sandee
    Input Text    id=destination       Europe
    Input Text    id=contactperson     Sodsai Sandee
    Input Text    id=relationship      Mother
    Input Text    id=email             somsong@
    Input Text    id=phone             081-111-1234
    Click Button    id=submitButton
    Page Should Contain    Please enter a valid email address.
    Close Browser

7. Open Form in google test 
    Open Browser To Form Page
    Form Page Should Be Open

8. Empty Phone Number
    Input Text    id=firstname         Somsong
    Input Text    id=lastname          Sandee
    Input Text    id=destination       Europe
    Input Text    id=contactperson     Sodsai Sandee
    Input Text    id=relationship      Mother
    Input Text    id=email             somsong@kkumail.com
    Click Button    id=submitButton
    Page Should Contain    Please enter a phone number.
    Close Browser

9. Open Form in google test 
    Open Browser To Form Page
    Form Page Should Be Open

10. Invalid Phone Number
    Input Text    id=firstname         Somsong
    Input Text    id=lastname          Sandee
    Input Text    id=destination       Europe
    Input Text    id=contactperson     Sodsai Sandee
    Input Text    id=relationship      Mother
    Input Text    id=email             somsong@kkumail.com
    Input Text    id=phone             191
    Click Button    id=submitButton
    Page Should Contain    Please enter a valid phone number, e.g., 081-234-5678, 081 234 5678, or 081.234.5678).
    Close Browser