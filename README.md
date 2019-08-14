
# Java QAF

### To Get Started

#### Pre-requisites
1.JAVA installed globally in the system.

2.MAVEN installed in system.

#### About
* This is sample project with QAF directory structure. This project uses Maven as build tool and hence you can configure dependencies in pom.xml file as normal Maven based project.
* The 'config' directory contains different xml files, and is a place holder for configuration files.These xml files are TestNG configuration files. please read this [Documentation](http://testng.org/doc/documentation-main.html#testng-xml).
* The 'resources' directory contains all required resources including properties files and data files, and is a place holder for resources.
* The 'src' directory contains all java files and is a place holder for other java files.
* The 'test-results' directory will contain result files.
* The 'scenarios' directory is the default place holder for all the scenario files (BDD files).

#### Configuring execution platform
Using QAF it is very easy to execute test scenarios of different platforms.

To run Tests of different platforms QAF requires few configuration to be done.


Please follow this [Guideline](https://qmetry.github.io/qaf/latest/creating_configuration_file.html).

You can get complete Property list available with QAF [here](https://qmetry.github.io/qaf/latest/properties_list.html)

#### run the test
* To run the project from command prompt, go to project home.
	```
	 mvn clean test
	 ```

* This project works best with JDK 8. if using other any JDK version, please update pom.xml dependencies accordingly

#### View Results.
	'QMetry' Menu > 'Test Report'

```Note: ```This sample project uses chrome driver and it requires chrome driver binary.
You need to download and set webdriver.chrome.driver property in application.properties file with driver binary path.


#### More Information
Please refer complete QAF [Documentation](https://qmetry.github.io/qaf/)

For Integration with QTM, refer [this](https://github.com/qmetry/qmetry-test-management-maven-plugin/blob/master/README.md)

QMetry Team.
