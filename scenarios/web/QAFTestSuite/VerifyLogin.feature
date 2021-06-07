Feature: web

@author:nidhi.shah
@dataFile:resources/web/users.csv
@description:A Scenario to verify the login
@SMOKE

Scenario: VerifyLogin

   Given get "https://qas.qmetry.com/bank"
   When wait until "text.txtusername" to be enable
   And clear "text.txtusername"
   And wait until "text.txtusername" to be enable
   And sendKeys "${username}" into "text.txtusername"
   And wait until "password.txtpassword" to be enable
   And clear "password.txtpassword"
   And wait until "password.txtpassword" to be enable
   And sendKeys "${password}" into "password.txtpassword"
   And wait until "button.btnlogin" to be enable
   And click on "button.btnlogin"
   Then verify "button.logout" is visible
  

