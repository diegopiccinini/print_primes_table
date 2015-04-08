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
					Primes.process_command(args, options)

				rescue => err
					puts err.message
				end
			end
		end
	end
end
