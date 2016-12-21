require "features_helper"

RSpec.feature "List domains" do
  context "with domains" do
    before do
      user = with_successful_signin
      stub_list_domains(user, domains)
    end

    let(:domains) { %w(example-alpha.com example-beta.com) }

    scenario "it lists them" do
      visit "/"

      within "#domains" do
        domains.each do |domain|
          expect(page).to have_content(domain)
        end
      end
    end
  end

  context "without domains" do
    before do
      user = with_successful_signin
      stub_list_domains(user, domains)
    end

    let(:domains) { [] }

    scenario "it lists them" do
      visit "/"

      expect(page).to have_content("No domains")
    end
  end
end
