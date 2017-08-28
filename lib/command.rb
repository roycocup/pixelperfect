class Command
    attr_accessor :statement

    @cmd = []
    
    def execute(statement)
        raise NotImplementedError
    end
end
