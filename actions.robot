*** Settings ***
Documentation       File with test steps
Library    SeleniumLibrary
Library    BuiltIn
Library    XML
*** Variables ***
${url}            https://www.icmc.usp.br/pessoas/docentes
${browser}        chrome
${Depts}          xpath=//span[@class="Cestsgl"]
${DeptSSC}        xpath=//option[@value="SSC"]
${DivProfs}       xpath=//div[@class="col-xs-6 col-sm-4 col-md-3 col-lg-2"]
${Number}         24

*** Keywords ***
New Session
    Open Browser   ${url}    ${browser}
    Maximize Browser Window
End Session
    Capture Page Screenshot
    Close Browser
Find Professors
    Click Element     ${Depts} 
    Click Element     ${DeptSSC}
Check Count Professors
    ${CountProfs} =    SeleniumLibrary.Get Element Count    ${DivProfs}
    Should Be Equal As Integers    ${CountProfs}     ${Number}
    Log    Number of Professors is Check


    
