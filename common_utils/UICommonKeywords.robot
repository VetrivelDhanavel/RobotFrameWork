*** Settings ***
Documentation    Common Keywords for UI

Library    Collections
Library    SeleniumLibrary

Resource   ../testdata/CommonVariables.robot

*** Keywords ***
Launch Browser

     Open Browser  http://demostore.supersqa.com/  chrome       # options=add_argument("--headless")
     Maximize Browser Window
