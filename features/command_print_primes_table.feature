Feature: Command print_primes_table
Scenario: Printing only 10 primes
	When I run `print_primes_table --only-primes 10`
	Then it should pass with:
			"""
			2	3	5	7	11	13	17	19	23	29
			"""
