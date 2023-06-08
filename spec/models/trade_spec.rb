require 'rails_helper'

RSpec.describe Trade, type: :model do
  let(:user) { User.new(name: 'User1', email: 'user1@gmail.com', password: "123456") }
  
  subject do
    described_class.new(
      author: user,
      name: "First",
      amount: 1
    )
  end
  
  let(:category) { Category.create(name: "Trade 1", icon: 'Url') }

  describe 'associations' do
    it { should belong_to(:author) }
    it { should have_and_belong_to_many(:categories) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
  end
  

  describe '#have trades' do
    it 'returns the first trade' do
      subject.categories << category
      expect(subject.categories.to_a).to eq([category])
    end
  end
end
