class NationService
  def members_of_nation(nation)
    response = conn.get("/api/v1/characters?affiliation=#{nation}")
    json = JSON.parse(response.body, symbolize_names: true)
    binding.pry
  end

  def conn
    Faraday.new(url: 'https://last-airbender-api.herokuapp.com') do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end
end