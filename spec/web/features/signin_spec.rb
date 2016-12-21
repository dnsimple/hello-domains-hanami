require "features_helper"

RSpec.feature "Sign in" do
  scenario "with success" do
    user = with_successful_signin

    visit "/"
    expect(page).to have_content("Hello, #{user.email}")
  end
end
