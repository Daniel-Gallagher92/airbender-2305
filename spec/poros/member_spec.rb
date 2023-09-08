require 'rails_helper'

RSpec.describe Member do 
  it 'exists w/ attributes' do 
    attributes = { 
      name: 'Azula',
      allies: ['Ozai'],
      enemies: ['Iroh'],
      affiliation: "Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)"
    }
  
  member = Member.new(attributes)

  expect(member).to be_a(Member)
  expect(member.name).to eq('Azula')
  expect(member.allies).to eq('Ozai')
  expect(member.enemies).to eq('Iroh')
  expect(member.affiliation).to eq("Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)")
  end
end