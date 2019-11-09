Feature: Deposit money into account

Background:
	Given Amount of money in account is 50000 Baht

Scenario: Deposit money
	When I deposit 10000 Baht into my account
	Then Amount of money in my account should be 40000 Baht
