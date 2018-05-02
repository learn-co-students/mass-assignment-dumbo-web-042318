class Person
  #your code here
  attr_accessor :name, :birthday, :hair_color, :eye_color, :height, :weight, :handed, :complexion, :t_shirt_size, :wrist_size, :glove_size, :pant_length, :pant_width

  def initialize(attributes)

    self.mass_assign(attributes)
  end

  def mass_assign(attributes)
    attributes.map do |key, value|
      if self.respond_to?("#{key}=")
        self.send("#{key}=".to_sym, value)
      end
    end
  end
end
