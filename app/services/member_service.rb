class MemberService 
  def self.conn 
    response = Faraday.new("https://last-airbender-api.fly.dev")
  end

  def self.get_members_by_nation(nation)
    response = conn.get("/api/v1/characters?affiliation=#{nation}&perPage=100&page=1")
    JSON.parse(response.body, symbolize_names: true)
  end
end

