Feature: Keep track of inventory
	As a employee
	I want to keep track of inventory

Background:
	Given a product Bread with quantity 50 in stock
	Given a product Jam with quantity 50 in stock

Scenario: Customer buy one product
	When customer buy Bread with quantity 2
	Then Bread quantity in stock should be 48

Scenario: Customer buy multiple products
	When customer buy Bread with quantity 4
	And customer buy Jam with quantity 2
	Then Bread quantity in stock should be 46
	And Jam quantity in stock should be 48

Scenario: Re-order one product
	When I order Jam with quantity 15
	Then Jam quantity in stock should be 65

Scenario: Re-order multiple product
	When I order Bread with quantity 50
	And I order Jam with quantity 60
	Then Bread quantity in stock should be 100
	Then Jam quantity in stock should be 110