*** Settings ***
Library    SeleniumLibrary    
Test Setup    Open Browser To Mahara
Test Teardown    Capture Screenshot And Close Browser
Resource    ../../../Keywords/Mahara/Mahara_Keywords.txt
Resource    ../../../Settings/Mahara/Mahara_UserCred.txt  

*** Test Cases ***
Mahara Invalid Login
    Login To Mahara    ${invalid_usr}    ${invalid_pwd}
    Page Should Contain Element    id=messages
    Page Should Contain    You have not provided the correct credentials to log in. Please check your username and password are correct.
    Page Should Contain    There was an error with submitting this form. Please check the marked fields and try again.
    
Mahara Admin Login
    Login To Mahara    ${admin_usr}    ${admin_pwd}
    Account Login Validation
    
Mahara Student Login
    Login To Mahara    ${student_usr}    ${student_pwd}
    Account Login Validation  
    
Mahara Learner Login
    Login To Mahara    ${learner_usr}    ${learner_pwd}
    Account Login Validation 
    
Mahara Staff Login
    Login To Mahara    ${staff_usr}    ${staff_pwd}
    Account Login Validation 
    
Mahara Sitestaff Login
    Login To Mahara    ${sitestaff_usr}    ${sitestaff_pwd}
    Account Login Validation