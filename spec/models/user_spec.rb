require 'rails_helper'

RSpec.describe User, type: :model do
  subject { FactoryBot.create(:user) }

  let(:category) { Category.create(name: "First", icon: "url" ) }
  let(:trade) { Trade.create(name: "trade", amount: 2)}

  # before { subject.save, post1.save, post2.save, post3.save }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it 'Name is expected present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "returns right number of category" do
    subject.categories << category
    subject.trades << trade
    expect(subject.categories.length).to eq(1)
  end
end
