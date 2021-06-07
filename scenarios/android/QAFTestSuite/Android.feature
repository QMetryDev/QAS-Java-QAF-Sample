Feature: android

@author:rinkesh.jain
@description:A scenario to verify transacations
@SMOKE

Scenario: Android

    When wait until "email" to be enable
    And sendKeys "Bob" into "email"
    Then verify "email" text is "Bob"
    When wait until "password" to be enable
    And sendKeys "Bob" into "password"
    Then verify "password" text is "Bob"
    When wait until "sign.in" to be enable
    And click on "sign.in"
    Then verify "transacations" is present
    When wait until "transacations" to be enable
    And click on "transacations"
    And wait until "enter.amount" to be enable
    And sendKeys "100" into "enter.amount"
    Then verify "enter.amount" text is "100"
    When wait until "credit" to be enable
    And click on "credit"
    Then verify ".fund..transfer" is present
    When wait until ".fund..transfer" to be enable
    And click on ".fund..transfer"
    And wait until "enter.amount" to be enable
    And sendKeys "100" into "enter.amount"
    Then verify "enter.amount" text is "100"
    When wait until "fund.transfer" to be enable
    And click on "fund.transfer"
