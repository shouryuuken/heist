module Heist
  class Runtime
    class Macro
      
      class Splice < Array
        def initialize
          super()
          @index = 0
          @boundaries = []
        end
        
        def mark!(depth)
          puts "MARK : #{depth} (#{size})"
          @boundaries[depth] ||= [0]
          @boundaries[depth] << size
        end
        
        def read
          self[@index]
        end
        
        def shift!
          @index += 1
          @index = 0 if @index >= size
        end
      end
      
    end
  end
end

