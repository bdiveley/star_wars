class Character
  attr_reader :name,
              :height,
              :mass,
              :birth_year,
              :gender

  def initialize(data)
    @name = data[:name]
    @height = data[:height]
    @mass = data[:mass]
    @birth_year = data[:birth_year]
    @gender = data[:gender]
  end

end
