
require_relative "Grid"

# Main class for program
class Main
	attr_accessor :file

	def initialize(file)
		@file = File.new(file)
		puts @file.read
	end

	def interpret_command(command)

	end

end


