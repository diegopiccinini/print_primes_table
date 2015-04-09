Feature: Command print_primes_table
Scenario: Printing only 10 primes
	When I run `print_primes_table --only-primes`
	Then it should pass with:
			"""
			2	3	5	7	11	13	17	19	23	29
			"""

Scenario: Printing only 15 primes
	When I run `print_primes_table --only-primes 15`
	Then it should pass with:
			"""
			2	3	5	7	11	13	17	19	23	29	31	37	41	43	47
			"""

Scenario: Printing table
	When I run `print_primes_table`
	Then it should pass with:
			"""
			+----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+
			|    | 2  | 3  | 5   | 7   | 11  | 13  | 17  | 19  | 23  | 29  |
			+----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+
			| 2  | 4  | 6  | 10  | 14  | 22  | 26  | 34  | 38  | 46  | 58  |
			| 3  | 6  | 9  | 15  | 21  | 33  | 39  | 51  | 57  | 69  | 87  |
			| 5  | 10 | 15 | 25  | 35  | 55  | 65  | 85  | 95  | 115 | 145 |
			| 7  | 14 | 21 | 35  | 49  | 77  | 91  | 119 | 133 | 161 | 203 |
			| 11 | 22 | 33 | 55  | 77  | 121 | 143 | 187 | 209 | 253 | 319 |
			| 13 | 26 | 39 | 65  | 91  | 143 | 169 | 221 | 247 | 299 | 377 |
			| 17 | 34 | 51 | 85  | 119 | 187 | 221 | 289 | 323 | 391 | 493 |
			| 19 | 38 | 57 | 95  | 133 | 209 | 247 | 323 | 361 | 437 | 551 |
			| 23 | 46 | 69 | 115 | 161 | 253 | 299 | 391 | 437 | 529 | 667 |
			| 29 | 58 | 87 | 145 | 203 | 319 | 377 | 493 | 551 | 667 | 841 |
			+----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+
			"""

Scenario: Printing table with arguments
	When I run `print_primes_table 6`
	Then it should pass with:
			"""
			+----+----+----+----+----+-----+-----+
			|    | 2  | 3  | 5  | 7  | 11  | 13  |
			+----+----+----+----+----+-----+-----+
			| 2  | 4  | 6  | 10 | 14 | 22  | 26  |
			| 3  | 6  | 9  | 15 | 21 | 33  | 39  |
			| 5  | 10 | 15 | 25 | 35 | 55  | 65  |
			| 7  | 14 | 21 | 35 | 49 | 77  | 91  |
			| 11 | 22 | 33 | 55 | 77 | 121 | 143 |
			| 13 | 26 | 39 | 65 | 91 | 143 | 169 |
			+----+----+----+----+----+-----+-----+

			"""
Scenario: Printing table with quantity less 1
	When I run `print_primes_table -6`
	Then it should pass with:
			"""
			The minimun quantity is 1
			"""