class method
  kid class class metho
  baby class class class method

class Person

end

go to pry

class Person
  def name
    "Chuck"
  end
end

call it using person.name

(getter and sets method)
class Person
# can use these to read and right the methods in ruby for @name and @height
  # attr_reader :name, :height, :hair_color, :eye_color, :weight
  # attr_writer :name, :height, :hair_color, :eye_color, :weight

# can be short handed into one
  attr_accessor :name,
                :height,
                :hair_color,
                :eye_color,
                :weight
# this is the exact same as all the other methods
  def initialize(this_name ="default name", height, )
    @name = this_name OR self.name = this name
    #can do this for all other attibutes
    self.height = new_height
    self.hair_color = hair_color

  end

  def name
    @name (means nil until its set) OR || "John Doe"
  end

  def name=(new_name)
    @name = new_name
  end

  def height = (new_height)
    @height = new_height

  def speak(text="desroy all computers")
    system("say #{text}")
  end

  def how_tall?
    height = 32 (overrides the method because of local variable)
    "I am #{self.height} inches tall" (self is person from the top)
  end
  class kid < Person

end
