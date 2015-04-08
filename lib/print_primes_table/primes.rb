require 'readline'
require 'terminal-table'

module PrintPrimesTable
  # @author Diego Hernán Piccinini Lagos

	class Primes
		def initialize(total = DEFAULT_TOTAL)
			@total=total
			@collection = []
			fill_collection
		end
		def fill_collection
			eval_number = 2
			begin
				has_divisors = false
				@collection.each do |prime|
					if (eval_number % prime) == 0
						has_divisors = true
						break
					end
				end
				# only the numbers has not divisors are primes
				@collection.push eval_number unless has_divisors
				eval_number += 1
			end until @collection.count == @total
		end

		def list_numbers
			puts @collection.join("\t")
		end
		def print_table
table = Terminal::Table.new do |t|
  t << ['One', 1]
  t << :separator
  t.add_row ['Two', 2]
  t.add_separator
  t.add_row ['Three', 3]
end
		end
	end

end
