module RSpec
  module Support
    module Authentication
      private

      def with_successful_signin # rubocop:disable Metrics/AbcSize
        data = omniauth_successful_signup

        visit "/"

        click_link "Sign in"
        expect(current_path).to eq("/")

        visit "/" # Force session reload because of a Capybara bug
        expect(page).to have_content(data.dig('info', 'email'))

        UserRepository.new.by_uid(data.dig('uid'))
      end
    end
  end
end

RSpec.configure do |config|
  config.include(RSpec::Support::Authentication)
end
