class Paperboy

  attr_reader :pay
  attr_accessor :name, :experience, :quota

  def initialize(name)
    @name = name
    @experience = 0
    @pay = 0
    @quota = 0
  end

  #This method should calculate and return the paperboy's quota for his next delivery
  def quota
    (0.5 * experience) + 50
  end

  # This method will take two house numbers and return the amount of money earned on this delivery
  # as a floating point number. It should also update the paperboy's experience!
  # Let's assume that the start_address is always a smaller number than the end_address
  # As a stretch exercise you can figure out how to ensure it still works if the
  # above assumption isn't met!

  def deliver(start_address, end_address)
    houses = (end_address - start_address)
      if houses <= quota
        pay = (0.25 * quota) - 2
      else
        houses > quota
        pay = (0.25 * quota) + ((houses - quota) * 0.50)
      end

    @pay += pay
    @experience += houses

  end

  def report
    "I'm, #{name} I've delivered #{quota} papers and I've earned #{pay} so far!"
  end


end

jonny = Paperboy.new('John')
jonny.quota
jonny.deliver(120, 500)
jonny.report
jonny.deliver(120, 500)
jonny.report
