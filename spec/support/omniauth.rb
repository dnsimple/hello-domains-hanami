module RSpec
  module Support
    module OmniAuth
      def self.successful_params # rubocop:disable Metrics/MethodLength
        attributes = Fabricate.attributes_for(:signin)

        Hash[
          "omniauth.auth" => {
            "provider" => PROVIDER.to_s,
            "uid"      => attributes.fetch(:uid),
            "info"     => {
              "type"            => attributes.fetch(:type),
              "plan_identifier" => attributes.fetch(:plan_identifier),
              "email"           => attributes.fetch(:email)
            },
            "credentials" => {
              "token" => attributes.fetch(:token)
            }
          }
        ]
      end

      private

      PROVIDER = :dnsimple

      def omniauth_successful_signup
        params = OmniAuth.successful_params

        ::OmniAuth::AuthHash.new(params.fetch("omniauth.auth")).tap do |data|
          omniauth_mock_auth data
        end
      end

      def omniauth_failing_signup
        omniauth_mock_auth :invalid_credentials
      end

      def omniauth_mock_auth(data)
        ::OmniAuth.config.mock_auth[PROVIDER] = data
      end
    end
  end
end

RSpec.configure do |config|
  config.include(RSpec::Support::OmniAuth)
end

OmniAuth.config.test_mode = true
