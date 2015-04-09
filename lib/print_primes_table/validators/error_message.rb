module PrintPrimesTable
	module Validators
		# @author Diego Hernán Piccinini Lagos
		# An intance contains te error_type and a message to the user
		class ErrorMessage
			MESSAGES = {

				:command_wrong_arguments => "the program allowed %{max} argument maximun, you typed %{argument_num}",
				:command_wrong_type_arguments => "Sorry, %{argument} is not an integer",
				:less_than_min => "The minimun quantity is %{min}, so %{argument} is not valid"
			}
			# initialize the message
			# @param content [String] text message to the user
			# @param error_type [Symbol] to qualifies the error
			# @param args [Hash] to include params in the response
			def initialize(error_type = :invalid,  args = {}, content = nil)
				unless content
					@content=MESSAGES[error_type]
				else
					@content = content
				end
				@error_type = error_type
				@args = args
			end
			# @return text message [String] it could contain arguments
			def show_content
				"\n" + @content % @args
			end
		end
	end
end
