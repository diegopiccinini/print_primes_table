require 'readline'
require 'terminal-table'

module PrintPrimesTable

  # @author Diego Hernán Piccinini Lagos
  # To handle the primes numbers
	class Primes

		# @param total [Integer] the quantity of the primes collection
		def initialize(total = DEFAULT_TOTAL)
			@total=total
			@collection = []
			fill_collection
		end

		# fill the collection with primes number end when the collection.count is equal total
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
		# print the list of primes collection separed by tab
		def list_numbers
			puts @collection.join("\t")
		end

		# print the table of TOTAL x TOTAL collection
		# each coordinate contain the product
		def print_table
			headings =[' '] + @collection
			rows=[]
			@collection.each do |prime|
				rows.push [prime] + @collection.map { |a| prime * a}
			end
			table = Terminal::Table.new :headings => headings, :rows => rows
			puts table
		end

	end

end
