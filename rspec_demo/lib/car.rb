
# create car class

class Car

    attr_accessor :brand, :wheels, :color

    def initialize
        @brand = 'volvo'
        @wheels = 4
        @color = 'red'
    end

    def change_color(new_color)
        @color = new_color
    end


end