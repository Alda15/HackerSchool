*** Settings ***
Library    SeleniumLibrary    
Variables    ../../../Objects/Automation_Practice/Automation_Practice.py
Test Setup    Open Browser    ${url}    ${browser}
Test Teardown    Close Browser 

*** Variables ***
${browser}    firefox
${url}       http://automationpractice.com/index.php

*** Test Cases ***
Register To Eshop
    Click Link    ${link_login}
    Wait Until Page Contains Element    ${auth_tbox_email}    
    Input Text    ${auth_tbox_email}    scourgeofgod@thehun.hun
    Click Button    ${btn_create_account}
    Wait Until Page Contains Element    ${sup_tbox_first_name}    
    Click Element    ${sup_radio_mrs}
    Input Text    ${sup_tbox_first_name}    Attila
    Input Text    ${addr_tbox_last_name}    The Hun
    Textfield Should Contain    ${sup_tbox_email}    scourgeofgod@thehun.hun
    
    Select From List By Index    ${sup_dropdown_day}    26
    Select From List By Label    ${sup_dropdown_month}    November${SPACE}
    Select From List By Value    ${sup_dropdown_year}    2010
    Select Checkbox    ${sup_chck_newslettter}
    Input Text    ${addr_tbox_first_name}    Attila
    Input Text    ${addr_tbox_last_name}    The Hun
    Input Text    ${addr_tbox_company}    Hungary
    Input Text    ${addr_tbox_address1}    ulice
    Input Text    ${addr_tbox_city}    Budapest
    Select From List By Label    ${addr_dropdown_state}    Arizona
    Input Text    ${addr_tbox_zip}    28201
    Select From List By Label    ${addr_dropdown_country}    United States
    Input Text    ${addr_tbox_info}    fbnaifblsfndjksf
    Input Text    ${addr_tbox_cellphone}    666222555
    Input Text    ${addr_tbox_alias}  MyAddress
    Input Password    ${sup_pwd_password}    attilathehun
    Click Button    ${sup_btn_register}