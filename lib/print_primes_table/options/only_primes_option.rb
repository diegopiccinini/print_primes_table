
module PrintPrimesTable

	module Options
		# @author Diego Hernán Piccinini Lagos
		# to print only a list of primes collection
		class OnlyPrimesOption
			class << self
				# process the input to print the list if it pass the DefaultValidator.validate
				# @param args [Array] the first argument is the quantity of primes collection
				# @param options [Array] if in future we will want to add options
				def process(args,options)
					validator = Validators::DefaultValidator.validate(args)
					if validator == :valid
						if args.count>0
							total = Integer(args[0])
							primes = Primes.new total
						else
							primes= Primes.new
						end
						primes.list_numbers
					else
						puts validator
					end
				end
			end
		end
	end
end