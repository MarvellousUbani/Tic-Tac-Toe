	class Player
        attr_reader :name, :symbol

        def initialize(name, symbol)
            @name = name
            @symbol = symbol
        end
    end


    class Board
    	attr_reader :grid


    	def initialize
    		@grid = [
    			["","",""],
    			["","",""],
    			["","",""]
    		]
    	end
    end

