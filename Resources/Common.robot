*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
Begin Web Test
    Open Browser    about:blank    edge
    Maximize Browser Window

End Web Test
    Close Browser
