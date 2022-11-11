*** Settings ***
Documentation    Keywords for Automation Amazon Page

Library    OperatingSystem
Library    SeleniumLibrary
Library    String

Resource    ../testdata/CommonVariables.robot
Resource    ../common_utils/UICommonKeywords.robot

*** Keywords ***

Login into demoStoreSuperSqa Clothing

    Launch Browser
    click element        ${navigate_to_login_page}
    input text           ${login_username_textbox}     ${EMAIL}
    input password       ${login_password_textbox}     ${PASSWORD}
    click element        ${login_submit_button}
    page should contain   My account
    sleep  5s

Search Product

    Click Element       ${search_textbox}
    Input Text          ${input_searchBox}       ${Product_Name}
    Press keys          ${input_searchBox}       ENTER

Choosing And Adding product to Cart

    click element       ${click_product}
    #Updating Quantity of the product
    input text          ${select_quantity}               ${Quantity}
    click element       ${cart_button}

Cart Page
    click element        ${VIEW_CART}
    page should contain  Cart
    ${price}             get text                       ${get_price}
    ${price1}=           Remove String                  ${price}     ,    $
    ${price2}=           Fetch From Left                ${price1}    .
    ${quantity}          get element attribute          ${get_quantity}    value
    log to console       Price of single unit: ${price}
    log to console       Quantity(s): ${quantity}
    ${result}=           Evaluate                       ${price2} * ${quantity}
    ${result1}           convert to string              ${result}
    log to console       Total: $${result}

    ${subtotal}          get text                       ${get_subtotal}
    ${subtotal}=         Remove String                  ${subtotal}    ,    $
    ${subtotal2}=        Fetch From Left                ${subtotal}    .
    log to console       Subtotal from Cart: $${subtotal}

    should be equal      ${result1}                     ${subtotal2}


Selecting Shipping method and Clicking Checkout
    scroll element into view         ${scroll_to_view_checkout_btn}
    click element                    ${select_free-shipping_method}
    sleep  5s
    click element                    ${checkout_button}
    page should contain              Checkout
