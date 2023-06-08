require 'rails_helper'

RSpec.describe 'Authentication', type: :feature do
  include Devise::Test::IntegrationHelpers

  setup do
  end

  scenario 'access categories page' do
    user = FactoryBot.create(:user)
    user.confirm user.confirm unless user.confirmed?

    sign_in user
    visit categories_path

    expect(page).to have_content('TRADES')
  end

  scenario 'user logs in successfully' do
    user = FactoryBot.create(:user)
    user.confirm user.confirm unless user.confirmed?

    sign_in user
    # sign_in user

    visit new_category_path

    fill_in 'category[name]', with: 'Category'
    fill_in 'category[icon]', with: 'https://cdn-icons-png.flaticon.com/128/11087/11087391.png'

    click_on 'SAVE'

    expect(page).to have_content('Category')
  end
end
