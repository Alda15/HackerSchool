*** Settings ***
Library    SeleniumLibrary    
Variables    ../../../Objects/Eshop/Eshop_Objects.py
Resource    ../../../Keywords/Eshop/Eshop_Keywords.txt
Test setup       Open Browser and Go to URL    ${BROWSER}    ${URL}
Test Teardown    Close Browser

*** Test Cases ***
Category Check
    [Template]    Go To ${category} And Check Products
    :FOR    ${category}    IN    @{categories}
    \    ${category}

Sort Products By Price Highest First
    :FOR    ${category}    IN    @{categories.keys()}
    \    Go To Category    ${categories['${category}']}
    \    Select Sort Criterion By Label   Price: Highest first
        
Information Links Are Accessible
    [Setup]    Run Keywords     Open Browser and Go to URL    ${BROWSER}    ${URL}    AND    Go To Category    ${categories['Women']}
    [Template]    Information Page Should Contain Title
    :FOR    ${information_link}    IN    @{information_links.keys()}
    \    ${information_links['${information_link}']}    ${information_link}