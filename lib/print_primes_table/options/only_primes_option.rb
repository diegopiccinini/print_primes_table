
module PrintPrimesTable
  # @author Diego Hernán Piccinini Lagos
	module Options
		class OnlyPrimesOption
			class << self
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