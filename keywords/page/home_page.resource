*** Settings ***
Documentation       This resource file defines reusable desktop web keywords for test cases functionality.


*** Keywords ***
Click accept consent
    common_keywords.Click visible element    ${HOME_PAGE.btn_accept_consent}

Scroll down to the more stories button
    SeleniumLibrary.Scroll Element Into View    ${HOME_PAGE.btn_more_stories}

Click on more stories button
    common_keywords.Click visible element    ${HOME_PAGE.btn_more_stories}
