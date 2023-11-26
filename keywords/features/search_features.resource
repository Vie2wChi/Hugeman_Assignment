*** Settings ***
Documentation       This resource file defines reusable desktop web keywords for test cases functionality.


*** Keywords ***
Input text on the search field and click search
    [Documentation]    ${Locator_tab} is tap menu that user need to select.
    [Arguments]    ${Locator_tab}
    blog_page.Click on the magnifier icon
    search_page.Input text on the search field    ${Locator_tab}
    search_page.Click search submit
