
require_relative "Grid"

# Main class for program
class Main
	attr_accessor :file

	def initialize(file)
		@file = File.new(file)
	end

	def run()
		@file.each_line do |line|
			interpret_instructions(line)
		end
	end

	def interpret_instructions(instructions)
		i = 0
		instructions.split(' ').each() do |cmd|
			puts "#{i} #{cmd}"
			i = i+1
		end

	end

end


