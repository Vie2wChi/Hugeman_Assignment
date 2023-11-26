*** Settings ***
Documentation       This resource file defines reusable desktop web keywords for test cases functionality.


*** Keywords ***
Scroll down to blog section on Blog page
    SeleniumLibrary.Scroll Element Into View    ${BLOG_PAGE.lbl_blog_title}

Select tab menu
    [Documentation]    ${Locator_tab} is tap menu that user need to select.
    [Arguments]    ${Locator_tab}
    common_keywords.Click Visible Element    ${Locator_tab}

Scroll to the blog list
    SeleniumLibrary.Scroll Element Into View    ${BLOG_PAGE.lbl_blog_list}

Click on the magnifier icon
    SeleniumLibrary.Click Element    ${BLOG_PAGE.lbl_magnifier}
