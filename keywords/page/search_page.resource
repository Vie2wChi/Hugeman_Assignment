*** Settings ***
Documentation       This resource file defines reusable desktop web keywords for test cases functionality.


*** Keywords ***
Input text on the search field
    [Documentation]    ${text_search} is text that user need to search
    [Arguments]    ${text_search}
    SeleniumLibrary.Input Text    ${SEARCH_PAGE.txt_search}    ${text_search}

Click search submit
    SeleniumLibrary.Click Element    ${SEARCH_PAGE.btn_search_submit}
