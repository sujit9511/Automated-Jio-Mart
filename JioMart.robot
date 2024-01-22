*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}=                         https://www.jiomart.com/
${searchfieldXPATh} =           //*[@id="autocomplete-0-input"]
${keyword_to_search} =          s23 ultra
${searchresultToClickXpath}=    //*[@id="598095291"]/div[2]/div[2]/div/div[1]
${cartButtonXPATH}=             //*[@id="btn_minicart"]
${placeOrderXPATH}=             //*[@id="login-container"]/jds-container[4]/section/div/jds-button/button
${addOneMoreItemXpath}=         //*[@id="itemid-598095291"]/div[3]/div/jds-button[2]
${removeOneItemXpath}=          //*[@id="itemid-598095291"]/div[3]/div/jds-button[1]/button


*** Test Cases ***
Open URL
    Open Link

Search
    Search and clik on product

add to cart
    add to cart

place order
    place order

remove
    Remove from cart

close
    Close Browser


*** Keywords ***
Open Link
    Open Browser    url=${url}    browser=Edge
    Maximize Browser Window

Search and clik on product
    Input Text    locator=${searchfieldXPATh}    text=${keyword_to_search}
    Press Keys    ${searchfieldXPATh}    RETURN
    Click Element    locator=${searchresultToClickXpath}

add to cart
    Execute Javascript    window.scrollBy(0,200)
    Sleep    time_=5s
    Click Element    css:.jm-btn.secondary.medium.center.full-width.jm-fw-bold.addtocartbtn
    Sleep    time_=5s
    Execute Javascript    window.scrollBy(200,0)
    Click Element    ${cartButtonXPATH}

place order
    Click Button    locator=${placeOrderXPATH}
    Execute Javascript    history.back()

Remove from cart
    Click Button    locator=${removeOneItemXpath}
