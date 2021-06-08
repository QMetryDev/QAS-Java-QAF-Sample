Feature: windows

@author:nidhi.shah
@description:Calculator Operations
@SMOKE

Scenario: windows

    When wait until "..window..window.2...group..group.5...button.2." to be enable
    And click on "..window..window.2...group..group.5...button.2."
    And wait until "..window..window.2...group..group.4...button.4." to be enable
    And click on "..window..window.2...group..group.4...button.4."
    And wait until "..window..window.2...group..group.5...button.9." to be enable
    And click on "..window..window.2...group..group.5...button.9."
    And wait until "..window..window.2...group..group.4...button.5." to be enable
    And click on "..window..window.2...group..group.4...button.5."
    Then verify "xpath..Window.Window.2..Group.Text.2." text is "Display is 9"

