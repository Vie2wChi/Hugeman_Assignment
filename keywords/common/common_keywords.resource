*** Settings ***
Documentation       This resource file defines reusable desktop web keywords for test cases functionality.


*** Variables ***
${text_array}       ${EMPTY}


*** Keywords ***
Open browser and set window size
    [Documentation]    Open browser and set window size
    SeleniumLibrary.Open Browser    url=${HOST_URL}    browser=${BROWSER}
    SeleniumLibrary.Set Window Size    width=${1920}    height=${1080}

Click visible element
    [Documentation]    To click the visible element
    [Arguments]    ${locator}
    SeleniumLibrary.Wait Until Element Is Visible    ${locator}
    SeleniumLibrary.Click Element    ${locator}
