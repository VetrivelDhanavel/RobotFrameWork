*** Settings ***
Documentation    Keywords for Automation Amazon Page

Library    OperatingSystem
Library    SeleniumLibrary

Resource   ../keywords/ShoppingPage_keywords.robot


*** Test Cases ***
Automation on Demo Store Super Sqa Clothing to add a product

     Login into demoStoreSuperSqa Clothing
     Search Product
     Choosing And Adding product to Cart
     Cart Page
     Selecting Shipping method and Clicking Checkout
     Close Browser
