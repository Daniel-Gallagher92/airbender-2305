class MemberFacade
  def self.get_members(nation)
    members_by_nation = MemberService.get_members_by_nation(nation)
    members_by_nation.map do |member_data|
      Member.new(member_data)
    end
  end
end