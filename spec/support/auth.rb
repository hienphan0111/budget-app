RSpec.shared_context 'When authenticated' do
  background do
    authenticate
  end

  def authenticate
    visit '/sessions/new'
    within('form#session') do
      fill_in 'Email', :with => 'user@example.com'
      fill_in 'Password', :with => 'password'
    end
    click_button 'Sign in'
  end
end