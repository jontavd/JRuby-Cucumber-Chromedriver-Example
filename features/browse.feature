# encoding: utf-8
Feature: JRuby with Chromedriver Example
	As a QA Analyst
	I would like to use JRuby and Chromedriver in my project
	Then I will be able to use Sikulix steps together with my webdriver steps

	Scenario: Validate chrome browser opening
		When I open the chrome browser on Google page
		And open a new tab using Sikulix
		Then I should see the Google initial page
