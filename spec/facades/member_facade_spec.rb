require 'rails_helper'

RSpec.describe 'Member Facade' do 
  it 'can get members by nation' do 
    members = MemberFacade.get_members('Fire Nation')
    expect(members).to be_an(Array)
    expect(members.count).to eq(97)
    expect(members.first).to be_a(Member)
    expect(members.first.name).to eq('Azula')
    expect(members.first.allies).to eq('Ozai')
    expect(members.first.enemies).to eq('Iroh')
    expect(members.first.affiliation).to eq(" Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)")
  end
end