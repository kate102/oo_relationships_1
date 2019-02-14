require './lib/user.rb'

describe User do

  before (:each) do
      @subject = User.new("Jane Doe","School Teacher",35,"PASSWORD")
  end

  describe 'authentication of user passsword' do
    it 'returns true if the password matches' do
      expect(@subject.authenticate("PASSWORD")).to eq true
    end
    it 'returns false if the password doesnt match' do
      expect(@subject.authenticate("FISHFINGERS")).to eq false
    end
  end

  describe 'output of user details' do
    it 'returns false if the password doesnt match' do
      expect(@subject.profile).to eq "Jane Doe, born in 1984: School Teacher"
    end

  end

end
