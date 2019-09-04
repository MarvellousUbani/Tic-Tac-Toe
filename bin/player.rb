	class Player
        attr_reader :name, :symbol

        def initialize
            @name = gets.chomp()
            @symbol = gets.chomp()
        end
    end

