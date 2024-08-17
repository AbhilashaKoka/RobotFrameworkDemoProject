*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
 Validate UnSuccessful Login
  open the browser with url
  fill the login Form
  wait until it checks and display error message
  verify error message

*** Keywords ***
open the browser with url
 Create Webdriver  chrome  executable_path=C:/Users/Abhilasha/Documents/DOCUMENT/StudyDocumentFolder/IDE/PyCharm/PyCharmProjects/chromedriver
 Go TO  https://rahulshettyacademy.com/loginpagePractise/

fill the login Form
 Input Text    id:username  rahulshettyacademy
 Input Password  id:password  12345678
 Click Button    signInBtn

wait until it checks and display error message
   Wait Until Element Is Not Visible    css:alert-danger

verify error message
 ${result}=  Get Text   css:.alert-danger
 Should Be Equal As Strings   ${result}   Incorrect username/password


