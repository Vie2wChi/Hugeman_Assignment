*** Settings ***
Documentation       This resource file defines reusable desktop web keywords for test cases functionality.


*** Keywords ***
Get the sub title from the first 3 blogs
    ${text_array}=    BuiltIn.Create List
    FOR    ${index}    IN RANGE    1    4
        ${index_string}=    Builtin.Convert to string    ${index}
        ${current_xpath}=    String.Replace string    ${BLOG_DETAIL_PAGE.lbl_blog_list}    index    ${index_string}
        SeleniumLibrary.Click Element    ${current_xpath}
        ${element_count}=    SeleniumLibrary.Get Element Count    ${BLOG_DETAIL_PAGE.lbl_sub_title}
        IF    ${element_count} > 0
            ${sub_title}=    SeleniumLibrary.Get Text    ${BLOG_DETAIL_PAGE.lbl_sub_title}
            Collections.Append To List    ${text_array}    ${sub_title}
            Log    Got text '${sub_title}' from Blog sub title
        ELSE
            Log    This Blog doesn't have sub title
        END
        SeleniumLibrary.Go Back
    END
    BuiltIn.Set Global Variable    ${text_array}

Search sub title then compare with sub title that stored in the array
    ${array_length}=    BuiltIn.Get Length    ${text_array}
    FOR    ${index}    IN RANGE    ${array_length}
        search_features.Input text on the search field and click search    ${text_array}[${index}]
        ${element_count}=    SeleniumLibrary.Get Element Count    ${SEARCH_PAGE.lbl_blog}
        ${string_count}=    BuiltIn.Convert To String    ${element_count}
        BuiltIn.Should Be Equal    ${string_count}    1
        SeleniumLibrary.Click Element    ${SEARCH_PAGE.lbl_blog}
        ${element_text}=    SeleniumLibrary.Get Text    ${BLOG_DETAIL_PAGE.lbl_sub_title}
        BuiltIn.Should Be Equal As Strings    ${text_array}[${index}]    ${element_text}
    END
