require 'readline'

module PrintPrimesTable
  # @author Diego Hernán Piccinini Lagos
	class Client
		class << self
			# getting commands
			def get_command
				begin

					ARGV.each do |param|
						case param
						when '--only-primes'
							primes = Primes.new
							primes.list_numbers
						end
					end

				rescue => err
					puts err.message
				end
			end
		end
	end
end
