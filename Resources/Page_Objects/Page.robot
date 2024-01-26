*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${PRODUCT_TO_CLICK}=        //*[@id="598095291"]/div[2]/div[2]/div/div[1]
${PLACE_ORDER_BUTTON}=      //*[@id="login-container"]/jds-container[4]/section/div/jds-button/button
${REMOVE_ITEM_BUTTON}=      //*[@id="itemid-598095291"]/div[3]/div/jds-button[1]/button
${ADD_TO_CART}=             css:.jm-btn.secondary.medium.center.full-width.jm-fw-bold.addtocartbtn
${SEARCH_RESULTS}=          class:plp-card-image 
