include Warden::Test::Helpers
Warden.test_mode!

feature 'All users page', :devise do

  after(:each) do
    Warden.test_reset!
  end

  scenario 'all_users reroutes to users#index' do
    user = FactoryGirl.create(:user)
    login_as(user, scope: :user)
    visit '/all_users'
    expect(page).to have_content 'Users'
  end

end
