class Report < ApplicationRecord
    belongs_to :user
    
    def print_entries 
        RubyPython.start
        python_script = RubyPython.import("read")
        puts python_script.run().rubify
        RubyPython.stop
    end
end
