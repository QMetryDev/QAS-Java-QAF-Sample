package steps.web;

import static com.qmetry.qaf.automation.step.CommonStep.click;
import static com.qmetry.qaf.automation.step.CommonStep.sendKeys;

import com.qmetry.qaf.automation.step.QAFTestStep;
import com.qmetry.qaf.automation.ui.WebDriverTestBase;
import com.qmetry.qaf.automation.util.Reporter;
import com.qmetry.qaf.automation.core.ConfigurationManager;

public class StepsLibrary {
	/**
	 * Maximize the browser window
	 * 
	 * @throws Throwable
	 */
	@QAFTestStep(description = "maximize window")
	public void maximizeWindow() {
		new WebDriverTestBase().getDriver().manage().window().maximize();
	}

	@QAFTestStep(description = "create random string")
	public void randomString(){
		
	}

	/**
	 * Update the value of current balance
	 * 
	 * @param operation : Operation to be performed - Ex. Debit or Credit
	 * @param key       : Amount of current balance
	 * @param amount    : Amount to be added or deducted from current balance
	 */
	@QAFTestStep(description = "{operation} the value of {key} with amount {amount}")
	public void debitAmount(String operation, String key, String amount) {
		String valueS = ConfigurationManager.getBundle().getPropertyValue(key);
		int balanceAmount = Integer.parseInt(valueS.split(" ")[1]);
		if (operation.equalsIgnoreCase("debit")) {
			valueS = "$ " + String.valueOf(balanceAmount - Integer.parseInt(amount));
		} else if (operation.equalsIgnoreCase("credit")) {
			valueS = "$ " + String.valueOf(balanceAmount + Integer.parseInt(amount));
		} else {
			Reporter.log(
					"Invalid transaction operation found.\nExpected : 'debit' or 'credit'.\nActual : " + operation);
		}
		ConfigurationManager.getBundle().setProperty(key, valueS);
	}
}
