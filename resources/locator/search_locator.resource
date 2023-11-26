*** Settings ***
Documentation       This resource file defines reusable locator variables for desktop web keywords.


*** Variables ***
&{SEARCH_PAGE}
...             txt_search=xpath=//input[@class='jet-ajax-search__field'] 
...             btn_search_submit=xpath=//button[@class='jet-ajax-search__submit']
...             lbl_blog=xpath=//div[@data-id='494bb52f']//div[contains(@class, 'jet-listing-dynamic-post-')]