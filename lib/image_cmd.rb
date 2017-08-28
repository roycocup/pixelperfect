require_relative "Command"

# Create a new M x N image with all pixels coloured white (O).
class ImageCommand < Command
    

    def execute(statement)
        @raw_cmd = statement
        parse_cmd()
    end

    def parse_cmd()
        @cmd = Array.new
        @raw_cmd.split(' ').each() do |char|
            @cmd.push(char)
        end
        puts @cmd
    end

end