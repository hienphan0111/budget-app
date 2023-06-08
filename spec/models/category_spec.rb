require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:user) { User.new(name: 'User1', email: 'user1@gmail.com', password: "123456") }
  
  subject do
    described_class.new(
      user: user,
      name: "First",
      icon: 'Url'
    )
  end
  
  let(:trade) { Trade.create(name: "Trade 1", amount: 3) }

  describe 'associations' do
    it { should belong_to(:user) }
    it { should have_and_belong_to_many(:trades) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
  end
  

  describe '#have trades' do
    it 'returns the first trade' do
      subject.trades << trade
      expect(subject.trades.to_a).to eq([trade])
    end
  end
end