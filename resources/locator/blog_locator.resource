*** Settings ***
Documentation       This resource file defines reusable locator variables for desktop web keywords.


*** Variables ***
&{BLOG_PAGE}
...             lbl_blog_title=xpath=//div[@data-id='7924ceb']//h2[@class='elementor-heading-title elementor-size-default']
...             btn_tech=id=jet-tabs-control-9044
...             lbl_blog_list=xpath=//div[@data-template-id='12988' and @role='tabpanel']//div[contains(@class, 'jet-listing-dynamic-post-')]
...             lbl_magnifier=xpath=//div[@data-id='46fef44']//a

