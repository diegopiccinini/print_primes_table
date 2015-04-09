Feature: Help Option

	Scenario: Sending the option --help
		When I run `print_primes_table --help`
		Then it should pass with:
			"""

				Option			Description

				(without		Print a table across the top and down the left
				is Then			side are the 10 primes, and the body of the table
				Default			should contain the product of multiplying these numbers.
				option)			This option accept one param the quantity.
										For example, if you want to print 20 type this
										print_table_primes 20

			--only-primes Print a list of 10 primes.
										This option accept one param the quantity.
										For example, if you want to print 20 type this
										print_table_primes --only-primes 20

			--help				Print this help.
				"""
