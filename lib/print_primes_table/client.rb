require 'readline'

module PrintPrimesTable
  # @author Diego Hernán Piccinini Lagos
	class Client
		class << self
			# getting commands
			def get_command
				begin

					options = OPTIONS & ARGV
					args = ARGV - options
					process_command(args, options)

				rescue => err
					puts err.message
				end
			end
			def process_command(args,options)

				options.each do |option|
					case option
					when '--only-primes'
						Options::OnlyPrimesOption.process(args, options)
					end
				end
				Options::DefaultOption.process(args) if options.count < 1

			end
		end
	end
end
