*** Settings ***
Library    SeleniumLibrary
Library    Collections
Resource    ../../Keywords/Eshop/Eshop_Keywords.txt
Variables    ../../Resources/Eshop/Registration_Data.py
Test Setup    Open Eshop Registration Form    ${email}
Test Teardown    Capture Screenshot And Close Browser

*** Variables ***
${email}    test@hackershool.cz

*** Test Cases ***

*** Keywords ***