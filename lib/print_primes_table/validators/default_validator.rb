
module PrintPrimesTable
  # @author Diego Hernán Piccinini Lagos
	module Validators
		class DefaultValidator

			class << self
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
