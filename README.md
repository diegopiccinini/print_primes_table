# PrintPrimesTable

 	This program prints out a multiplication table of the first 10 prime numbers.

 	The program run from a command line and print to screen one table.
	Across the top and down the left side should be the 10 primes, and the body of the table should contain the product of multiplying these numbers.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'print_primes_table'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install print_primes_table
    $ gem install terminal-table

## Ruby version
		2.0+

## Usage

Type in your terminal console:

```bash

print_primes_table --help

```

			+---------------+----------------------------------------------------------+
			| Option        | Description                                              |
			+---------------+----------------------------------------------------------+
			| default       | Print a table across the top and down the left           |
			|               | side are the 10 primes, and the body of the table        |
			| without       | should contain the product of multiplying these numbers. |
			| option        | This option accept one param the quantity.               |
			|               | For example, if you want to print 20 type this           |
			|               | print_table_primes 20                                    |
			|               |                                                          |
			| --only-primes | Print a list of 10 primes.                               |
			|               | This option accept one param the quantity.               |
			|               | For example, if you want to print 20 type this           |
			|               | print_table_primes --only-primes 20                      |
			|               |                                                          |
			| --only-primes | Print this help.                                         |
			+---------------+----------------------------------------------------------+

without options you should have this response:

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

## Test

It was tested and building using BDD methodolgy with cucumber and aruba.
To test run:

```bash

cucumber

```

## Contributing

1. Fork it ( https://github.com/diegopiccinini/print_primes_table/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
