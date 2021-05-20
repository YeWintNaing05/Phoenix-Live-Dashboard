defmodule Taskassign.Hits do
    def read_count do
        File.read!("./lib/counter.txt")
    end

    def write_count do
       File.write("./lib/counter.txt", to_string(String.to_integer(read_count()) + 1), [:write])
       {:ok}
    end
    
end