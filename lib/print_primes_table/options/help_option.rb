
module PrintPrimesTable

	module Options
		# @author Diego Hernán Piccinini Lagos
		# to handle the help messages output
		class HelpOption
			MESSAGE = {:headings=> ['Option','Description'],
				:rows => [
					["default\n\nwithout\noption" , <<EOF
Print a table across the top and down the left
side are the 10 primes, and the body of the table
should contain the product of multiplying these numbers.
This option accept one param the quantity.
For example, if you want to print 20 type this
print_table_primes 20
EOF
],[' ',' '],
				["--only-primes" , <<EOF
Print a list of 10 primes.
This option accept one param the quantity.
For example, if you want to print 20 type this
print_table_primes --only-primes 20
EOF
],[' ',' '],
			["--only-primes",'Print this help.']
				]
			}

			class << self
				# process the --help option to show the options availables.
				# @param args [Array] in this case is empty at first
				# @param options [Array] if in future we will want to add options
				def process(args,options)
					validator = Validators::HelpValidator.validate(args)
					if validator == :valid

						table = Terminal::Table.new :headings => MESSAGE[:headings], :rows => MESSAGE[:rows]
						puts table
					else
						puts validator
					end
				end
			end
		end
	end
end