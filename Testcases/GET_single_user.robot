*** Settings ***
Library        RequestsLibrary

*** Variables ***
${base_url}            https://reqres.in
${id}                  2
*** Test Cases ***
When user want to get user
    Create Session    mysession     ${base_url}

And user get single user
    ${response}=     Get Request    mysession    /api/users/${id}
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}
    Log To Console    ${response.headers}



    