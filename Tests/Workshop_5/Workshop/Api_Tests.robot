*** Settings ***
Library    REST    https://jsonplaceholder.typicode.com
Test Teardown    Output    response    ${OUTPUTDIR}/json/response.json
Variables    ../../../Objects/Api/api_objects.py

*** Keywords ***
Add New User
    [Arguments]    ${user}
    POST    /users    ${user}
    Output    request body    ${OUTPUTDIR}/json/request.json  
    Integer    response status    200  

*** Test Cases ***
Add New Users
    [Template]    Add New User
    :FOR    ${user}    IN    @{new_test_users}
    \    ${user}

    
    
*** inactive ***
Verify Required Fields
    GET    /users/1
    Object    response body    required=["id", "name"]
    Expect Response Body    {"required":["id", "name"]}

Delete A User
    DELETE    /users/1
    Integer    response status    200    202    204    
    
Create New User
    POST    /users    ${new_user}
    Output    request body    ${OUTPUTDIR}/json/request.json    
    
Update User
    PUT    users/1    {"new_field": "koks", "money": 100}
    Integer    response body money    100
    Boolean    response body simgle    true
    Output    request    ${OUTPUTDIR}/json/request.json
    
Update User v2
    ${res}=    GET    /users/1
    PATCH    /users/2    {"name": "George Best"}
    String    response body name    George Best

Simple Get
    Set Headers    {"autorization":"alkoholjemetla"}
    GET    /users
    Output    request    ${OUTPUTDIR}/json/request.json
    Output    response    ${OUTPUTDIR}/json/response.json
    
Get One User
    GET    /users/1
    Object    response body
    String    response body name    Leanne Graham
    Integer    response status    200