Feature: Deposit money into account

Background:
	Given Amount of money in account is 400 Baht

Scenario: Deposit money
	When I deposit 100 Baht into my account
	Then Amount of money in my account should be 300 Baht