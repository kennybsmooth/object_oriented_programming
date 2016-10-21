class Rover
  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end

  #input
  def read_instruction(order)
    order.each do |input|
      if input == 'L'
        left
      elsif input == 'R'
        right
      else
        move
      end
    end
    puts "this is where the rover should be: x= #{@x} y= #{@y} facing= #{@direction}"
  end

  def right
    if @direction == 'S'
        puts "the rover is facing West."
      @direction = 'W'
    elsif @direction == 'N'
        puts "the rover is facting East"
      @direction = 'E'
    elsif @direction == 'W'
        puts "the rover is facting North"
      @direction = 'N'
    else
      puts "the rover is facing South"
      @direction = 'S'
    end
  end

  def left
    if @direction == 'N'
        puts "the rover is facing North."
      @direction = 'W'
    elsif @direction == 'W'
        puts "the rover is facting West"
      @direction = 'S'
    elsif @direction == 'E'
        puts "the rover is facting East"
      @direction = 'N'
    else
      puts "the rover is facing South"
      @direction = 'E'
    end
  end

  def move
    if @direction == 'N'
      @y += 1
    elsif @direction == 'E'
      @x += 1
    elsif @direction == 'S'
      @y -= 1
    else
      @x -= 1
    end
  end
end

#instance of our rovers with direction x, y, direction facing
mars_rover_a = Rover.new(2,3,'N')
mars_rover_b = Rover.new(1,1,'E')

#call the read_instruction for each instance of the object rover
mars_rover_a.read_instruction(['L','M','R','M','L','M','R','R','M'])
mars_rover_b.read_instruction(['R','M','M','L','M','L','L','M'])
