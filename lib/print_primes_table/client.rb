require 'readline'

module PrintPrimesTable
  # @author Diego Hernán Piccinini Lagos
	class Client
		class << self
			# capture command arguments and options
			def get_command
				begin

					options = OPTIONS & ARGV
					args = ARGV - options
					process_command(args, options)

				rescue => err
					puts err.message
				end
			end

			# when the command has options, the option is executed
			# when there isn't options execute the default option
			# @param args [Array] arguments captured in a console standard input
			# @param options [Array] the program is prepared to get one option but in
			# I think in future is possible to include more in the same instruction
			def process_command(args,options)

				options.each do |option|
					case option
					when '--only-primes'
						Options::OnlyPrimesOption.process(args, options)
					when '--help'
						Options::HelpOption.process(args, options)
					end
				end
				Options::DefaultOption.process(args) if options.count < 1

			end
		end
	end
end
