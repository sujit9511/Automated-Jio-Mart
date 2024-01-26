*** Settings ***
Library     SeleniumLibrary
Resource    ..//Resources/Page_Objects/NavBarItems.robot
Resource    ..//Resources/Page_Objects/Page.robot


*** Variables ***
${JIOMART_URL}=     https://www.jiomart.com/


*** Keywords ***
Search And CLick On Product
    Go To    ${JIOMART_URL}
    Wait Until Page Contains Element    ${SEARCH_FIELD}
    Input Text    ${SEARCH_FIELD}    ${KEYWORD_TO_SEARCH}
    Press Keys    ${SEARCH_FIELD}    RETURN
    Wait Until Page Contains Element    ${SEARCH_RESULTS}
    Click Element    ${PRODUCT_TO_CLICK}

Add To Cart
    Search And CLick On Product
    Wait Until Page Contains    Samsung Galaxy S23
    Execute Javascript    window.scrollBy(0,200)
    Click Element    ${ADD_TO_CART}
    Sleep    1s
    Click Element    ${CART_BUTTON}
    Wait Until Page Contains    Electronics Basket

Place Order
    Add To Cart
    Click Button    ${PLACE_ORDER_BUTTON}
    Wait Until Page Contains    Sign in to JioMart
    Execute Javascript    history.back()

Remove From Cart
    Place Order
    Wait Until Page Contains    Electronics Basket
    Click Button    ${REMOVE_ITEM_BUTTON}
    Wait Until Page Contains    Your Cart is Empty!
