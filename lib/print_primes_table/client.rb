require 'readline'

module PrintPrimesTable
  # @author Diego Hernán Piccinini Lagos
	class Client
		class << self
			# getting commands
			def get_command
				begin
					puts ARGS[0]

				rescue => err
					puts err.message
				end
			end
		end
	end
end
