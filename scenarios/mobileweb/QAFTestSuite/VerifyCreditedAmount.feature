Feature: mobileweb

@author:nidhi.shah
@description:A scenario to credit the amount and verify
@SMOKE

Scenario: VerifyCreditedAmount

    # Launch site
	Given get "https://qas.qmetry.com/bank"
	
	# Maximize browser window. (Custom bdd step - Find the definition at steps.mobileweb)
	Then maximize window
	# Login
	And wait until "text.txtusername" to be enable
	And clear "text.txtusername"
	And sendKeys "Bob" into "text.txtusername"
	Then wait until "password.txtpassword" to be enable
	And clear "password.txtpassword"
	And sendKeys "Bob" into "password.txtpassword"
	Then wait until "button.btnlogin" to be enable
	And click on "button.btnlogin"
	# Verify successful login
	And assert "button.logout" is present
	
	# Store the current balance into variable
	Then get text of "text.currentbalance"
	And store into "currentBalance"
	# Debit the amount (Amount to be debited is stored in resources/testdata/data.xml - Datadriven)
	Then wait until "number.enteramountforcredit" to be enable
	And clear "number.enteramountforcredit"
	And sendKeys "1000" into "number.enteramountforcredit"
	And wait until "button.credit" to be enable
	And click on "button.credit"
	# Verify success message of credit operation
	Then assert "operation.success.message" is present
	
	# Update the value os stored balance(line no 24)(Custom bdd step - Find the definition at steps.mobileweb)
	And "credit" the value of "currentBalance" with amount "1000"
	
	# Verify the updated stored balance value with the updated online balance
	And verify "text.currentbalance" text is "${currentBalance}"
	
	# Logout
	And wait until "button.logout" to be enable
	And click on "button.logout"
	# Verify success logout
	And assert "button.btnlogin" is present
