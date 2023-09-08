class SearchController < ApplicationController
  def index
    @nation = params[:nation]
    @all_members = MemberFacade.get_members(params[:nation])
    @first_25_members = @all_members[0..24]
  end
end