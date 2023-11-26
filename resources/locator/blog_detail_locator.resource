*** Settings ***
Documentation       This resource file defines reusable locator variables for desktop web keywords.


*** Variables ***
&{BLOG_DETAIL_PAGE}
...             lbl_blog_list=xpath=//div[@data-template-id='12988' and @role='tabpanel']//div[contains(@class, 'jet-listing-dynamic-post-')][index]
...             lbl_sub_title=xpath=//div[@data-id='f43c3b9']/div