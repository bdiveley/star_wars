class CharacterFacade

  def initialize(name)
    @name = name
    @_find_character = nil
  end

  def find_character
    @_find_character ||=
    Character.new(service.character_json)
  end

  def name
    find_character.name
  end

  def height
    find_character.height
  end

  def mass
    find_character.mass
  end

  def birth_year
    find_character.birth_year
  end

  def gender
    find_character.gender
  end

private

  def service
    CharacterService.new({name: @name})
  end

end
