class Command
  attr_accessor :obj, :raw_cmd, :params

  def initialize(statement, obj)
    @obj = obj
    @raw_cmd = statement
    @params = []
    parse_cmd
    execute
  end

  def parse_cmd
    @raw_cmd.split(' ').each do |char|
      @params.push(char)
    end
  end

  def execute
    raise NotImplementedError
  end
end
