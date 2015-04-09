
module PrintPrimesTable
  # @author Diego Hernán Piccinini Lagos
	module Validators
		class DefaultValidator

			class << self
				# validate the args before a method to return a message to the user
				# @param args [Array] in this case is valid 1 argument integer
				# @return [Symbol | String] :valid or an Error Message
				def validate(args)
					begin
						raise ArgumentError.new(
							ErrorMessage.new(:command_wrong_arguments,
								{:max => 1, :argument_num => args.count }
								).show_content) if args.count > 1
						if args.count > 0

							begin
								total = Integer(args[0])
							rescue
								raise TypeError.new(
									ErrorMessage.new(:command_wrong_type_arguments,
										{ :argument => args[0] }).show_content)
							end

							raise RangeError.new(
								ErrorMessage.new(:less_than_min,
										{ :min => 1, :argument => args[0] }).show_content) if total < 1
						end
						:valid
					rescue  => err
						err.message
					end
				end
			end
		end
	end
end
