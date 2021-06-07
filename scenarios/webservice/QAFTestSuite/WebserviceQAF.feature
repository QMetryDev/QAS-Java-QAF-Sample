Feature: webservice

@author:nidhi.shah
@description:Sample Test Scenario for Webservices
@SMOKE

Scenario: Webservice QAF

    When user requests "GET.struts2.rest.showcase.2.5.18.orders.json"
    And user requests "PUT.struts2.rest.showcase.2.5.18.orders.3.json"
    Then response should have status code "200"
    And response should have header "Content-Length" with value "4"
    When user requests "PUT.struts2.rest.showcase.2.5.18.orders.3.json_1"

