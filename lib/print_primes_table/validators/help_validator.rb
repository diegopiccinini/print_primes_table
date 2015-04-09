
module PrintPrimesTable
  # @author Diego Hernán Piccinini Lagos
	module Validators
		class HelpValidator

			class << self
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
