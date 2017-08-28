
require_relative "grid"
require_relative "image_cmd.rb"

class Main
	attr_accessor :file

	def initialize(file)
		@file = File.new(file)
		@image_cmd = ImageCommand.new
	end

	def run()
		interpret_instructions()
	end

	def interpret_instructions()
		@file.each_line do |line|
			case line[0].upcase
			when 'I' then @image_cmd.execute(line)
			else puts "Sorry, the command #{line[0]} is not available. Maybe in the future... "
			end
		end
	end

	def package_command(line)
		line.split(' ').each() do |cmd|
			Command.new(cmd)
		end
	end

end


