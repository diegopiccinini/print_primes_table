require 'readline'

module PrintPrimesTable
  # @author Diego Hernán Piccinini Lagos
	class Client
		class << self
			# getting commands
			def get_command
				begin
					primes = Primes.new
					has_option=false
					ARGV.each do |param|
						case param
						when '--only-primes'
							primes.list_numbers
							has_option=true
						end
					end
					primes.print_table unless has_option
				rescue => err
					puts err.message
				end
			end
		end
	end
end
