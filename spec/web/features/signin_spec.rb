require "features_helper"

RSpec.feature "Sign in" do
  scenario "with success" do
    data = omniauth_successful_signup

    visit "/"

    click_link "Sign in"
    expect(current_path).to eq("/")

    visit "/" # Force session reload because of a Capybara bug
    expect(page).to have_content("Hello, #{data.dig('info', 'email')}")
  end
end
