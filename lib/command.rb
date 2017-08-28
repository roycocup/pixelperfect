class Command
  attr_accessor :statement

  @cmd = []

  def execute(_statement)
    raise NotImplementedError
  end
end
