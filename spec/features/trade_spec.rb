require 'rails_helper'

RSpec.describe 'Trade', type: :feature do
  include Devise::Test::IntegrationHelpers

  scenario 'access categories page' do
    user = FactoryBot.create(:user)
    category = Category.create(name: 'House', icon: 'https://cdn-icons-png.flaticon.com/128/11087/11087391.png', user: user)

    sign_in user
    visit category_path(category)

    expect(page).to have_content('ADD TRADE')
  end

  scenario 'Create new trade' do
    user = FactoryBot.create(:user)
    category = Category.create(name: 'House', icon: 'https://cdn-icons-png.flaticon.com/128/11087/11087391.png', user: user)

    sign_in user
    visit new_category_trade_path(category)

    fill_in 'trade[name]', with: 'Trade1'
    fill_in 'trade[amount]', with: 2
    select 'House', from: 'trade[category]'

    click_on 'SAVE'

    expect(page).to have_content('New trade was created successfully')
  end
end
