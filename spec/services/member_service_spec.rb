require 'rails_helper'

RSpec.describe MemberService do
  describe 'class methods' do
    describe '.conn' do
      it 'returns a faraday connection' do
        expect(MemberService.conn).to be_a(Faraday::Connection)
      end
    end

    describe '.get_characters' do 
      it 'returns characters from a given nation' do
        characters = MemberService.get_members_by_nation('Fire Nation')
        expect(characters).to be_an(Array)
        expect(characters.count).to eq(97)

        expect(characters.first).to have_key(:name)
        expect(characters[0][:name]).to be_a(String)

        expect(characters.first).to have_key(:allies)
        expect(characters[0][:allies]).to be_an(Array)

        expect(characters.first).to have_key(:enemies)
        expect(characters[0][:enemies]).to be_an(Array)
        
        expect(characters.first).to have_key(:affiliation)
        expect(characters[0][:affiliation]).to be_a(String)
      end
    end
  end
end