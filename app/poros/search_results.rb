class SearchResults
 def members(nation)
    json = NationService.new.members_of_nation(nation)
    @members = json.map do |member_data|
      Member.new(member_data)
    end
  end
end