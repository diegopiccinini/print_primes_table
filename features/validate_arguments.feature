Feature: Validate Arguments

	Scenario: Argument wrong type
		When I run `print_primes_table Mdd`
		Then it should pass with:
				"""
				Sorry, Mdd is not an integer
				"""
	Scenario: Argument number of arguments
		When I run `print_primes_table 10 44`
		Then it should pass with:
				"""
				the program allowed 1 argument maximun, you typed 2
				"""