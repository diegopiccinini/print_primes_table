
module PrintPrimesTable

	module Validators
		# @author Diego Hernán Piccinini Lagos
		# to validate the --help option
		class HelpValidator

			class << self
				# validate the arguments of --help option
				# @param args [Array] the help option hasn't arguments
				# @return [Symbol | String] :valid or an Error Message
				def validate(args)
					begin
						raise ArgumentError.new(
							ErrorMessage.new(:command_wrong_arguments,
								{:max => 1, :argument_num => args.count }
								).show_content) if args.count > 0

						:valid
					rescue  => err
						err.message
					end
				end
			end
		end
	end
end
