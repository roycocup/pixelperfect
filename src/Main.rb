
require_relative "Grid"

# Main class for program
class Main
	
	def initialize(cols, rows)	
		@grid = Grid.new(cols, rows)
	end


	def debug
		puts @grid.to_s
	end
end


main = Main.new(14, 25)
main.debug
