module Playable
    class Player
        attr_writer :name, :symbol

        def initialize(name, symbol)
            @name = gets.chomp()
            @symbol = gets.chomp()
        end
    end
end
