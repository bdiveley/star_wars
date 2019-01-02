class CharacterService

  def initialize(data)
    @name = data[:name]
  end

  def character_json
    JSON.parse(response.body, symbolize_names: true)[:results].first
  end

private

  def conn
    Faraday.new("https://swapi.co/api/")
  end

  def response
    conn.get("people/?search=#{name}")
  end

  def name
    @name
  end

end
