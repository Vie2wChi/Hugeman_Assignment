*** Settings ***
Resource            ${CURDIR}/../../resources/imports/imports.resource
Test Setup          common_keywords.Open browser and set window size
Test Teardown       SeleniumLibrary.Close All Browsers


*** Test Cases ***
TC_001 Compare sub title from each blog and blog from search result should be the same
    [Tags]    integration
    home_page.Click accept consent
    home_features.Scroll down and Click on more stories button
    blog_features.Scroll down to blog section and Select tab menu     ${BLOG_PAGE.btn_tech}
    blog_detail_features.Get the sub title from the first 3 blogs
    blog_detail_features.Search sub title then compare with sub title that stored in the array
