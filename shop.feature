Feature: Keep track of inventory
	As a employee
	I want to keep track of inventory

Background:
	Given a product sword with quantity 20 in stock
	Given a product Armor with quantity 10 in stock

Scenario: Customer buy one product
	When customer buy sword with quantity 3
	Then sword quantity in stock should be 17

Scenario: Customer buy multiple products
	When customer buy sword with quantity 1
	And customer buy Armor with quantity 2
	Then Sword quantity in stock should be 19
	And armor quantity in stock should be 8

Scenario: Re-order one product
	When I order Armor with quantity 5
	Then armor quantity in stock should be 25

Scenario: Re-order multiple product
	When I order sword with quantity 8
	And I order armor with quantity 6
	Then sword quantity in stock should be 28
	Then armor quantity in stock should be 16
