*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Common.robot
Resource    ../Resources/JioMartApp.robot
Test Setup    Begin Web Test
Test Teardown    End Web Test


*** Test Cases ***
SEARCH FOR PRODUCT
    [Tags]    FUNCTIONAL TEST
    Search And CLick On Product

USER CAN ADD TO CART
    [Tags]    FUNCTIONAL TEST
    Add to Cart

PLACE ORDER THEN SIGN IN PAGE
    [Tags]    FUNCTIONAL TEST
    Place Order

USER CAN REMOVE ITEM FROM CART
    [Tags]    FUNCTIONAL TEST
    Remove from cart

