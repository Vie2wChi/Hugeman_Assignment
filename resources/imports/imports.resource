*** Settings ***
Documentation       Import this file to test suits file for access library, keywords and test data.

Library             String
Library             Collections
Library             SeleniumLibrary    timeout=60s    implicit_wait=10s
########## Page Keywords ##########
Resource            ${CURDIR}/../../keywords/common/common_keywords.resource
Resource            ${CURDIR}/../../keywords/page/home_page.resource
Resource            ${CURDIR}/../../keywords/page/blog_page.resource
Resource            ${CURDIR}/../../keywords/page/search_page.resource
########## Features Keywords ##########
Resource            ${CURDIR}/../../keywords/features/home_features.resource
Resource            ${CURDIR}/../../keywords/features/blog_features.resource
Resource            ${CURDIR}/../../keywords/features/blog_detail_features.resource
Resource            ${CURDIR}/../../keywords/features/search_features.resource
########## Locator ##########
Resource            ${CURDIR}/../locator/home_locator.resource
Resource            ${CURDIR}/../locator/blog_locator.resource
Resource            ${CURDIR}/../locator/blog_detail_locator.resource
Resource            ${CURDIR}/../locator/search_locator.resource
########## ENV ##########
Variables           ${CURDIR}/../environment/env_config.yaml
