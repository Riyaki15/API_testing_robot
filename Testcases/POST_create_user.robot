*** Settings ***
Library        RequestsLibrary
Library        Collections
*** Variables ***
${base_url}            https://reqres.in/api/users

*** Test Cases ***
When user want to create user
    Create Session    regressin    ${base_url}
    ${body}=            Create Dictionary   name= aww       job= leader
    ${header}=          Create Dictionary   Content-type=application/json
    ${response}=        Post Request    regressin    /register      data=${body}    headers=${header}

    Log To Console    ${response.status_code}
    Log To Console    ${response.content}
    Log To Console    ${response.headers}



