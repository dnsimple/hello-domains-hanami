require "features_helper"

RSpec.feature "Sign out" do
  scenario "with success" do
    with_successful_signin

    visit "/"
    click_link "Sign out"

    expect(current_path).to eq("/")
    expect(page).to have_content("Sign in")
  end
end
