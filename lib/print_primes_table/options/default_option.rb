
module PrintPrimesTable
  # @author Diego Hernán Piccinini Lagos
	module Options
		class DefaultOption
			class << self
				# procces the default option to print the table.
				# The validator print an error if there is an exception
				# @param args [Array] the first argument is a integer quantity of prime collection
				def process(args)
					validator = Validators::DefaultValidator.validate(args)
					if validator == :valid
						if args.count>0
							total = Integer(args[0])
							primes = Primes.new total
						else
							primes= Primes.new
						end
						primes.print_table

					else
						puts validator
					end
				end
			end
		end
	end
end