
*** Settings ***
Documentation    Test File , Developer: Alan Patriota
Library    SeleniumLibrary
Resource   ../actions.robot 

Test Setup       New Session

Test Teardown    End Session  


*** Test Cases ***
CHECK PROFESSORS   
    Find Professors
    Check Count Professors
    


