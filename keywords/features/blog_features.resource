*** Settings ***
Documentation       This resource file defines reusable desktop web keywords for test cases functionality.


*** Keywords ***
Scroll down to blog section and Select tab menu
    [Documentation]    ${locator_tab_menu} is tap menu that user need to select.
    [Arguments]    ${locator_tab_menu}
    blog_page.Scroll down to blog section on Blog page
    blog_page.Select tab menu    ${locator_tab_menu}
    blog_page.Scroll to the blog list
