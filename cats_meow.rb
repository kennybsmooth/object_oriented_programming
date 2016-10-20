class Cat

  attr_accessor :meal_time, :preferred_food, :name

    def initialize(name, preferred_food, meal_time)
      @meal_time = meal_time
      @preferred_food = preferred_food
      @name = name
    end

    def eats_at
      if meal_time <= 11
        "#{meal_time} AM"
      else
        if meal_time >12
          "#{meal_time - 12} PM"
        else
          "#{meal_time} PM"
        end
      end
    end

    def meow
      "My name is #{name} and I eat #{preferred_food} at #{eats_at}."
    end
end

    precious = Cat.new('Precious','chicken bits', 20)
    nicole = Cat.new('Nicole','minced meat', 15)
    fluffy = Cat.new('Fluffy', 'tuna', 24)

 puts precious.meow
 puts nicole.meow
 puts fluffy.meow
