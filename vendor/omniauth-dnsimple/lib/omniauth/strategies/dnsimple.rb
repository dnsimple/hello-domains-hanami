require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Dnsimple < OmniAuth::Strategies::OAuth2
      option :name, 'dnsimple'

      option :client_options,
             site:          'https://api.sandbox.dnsimple.com',
             authorize_url: 'https://sandbox.dnsimple.com/oauth/authorize',
             token_url:     'https://api.sandbox.dnsimple.com/v2/oauth/access_token'

      uid do
        raw_info.fetch('id')
      end

      info do
        {
          type:            raw_info['type'],
          email:           raw_info['email'],
          plan_identifier: raw_info['plan_identifier']
        }
      end

      extra do
        {
          'raw_info' => raw_info
        }
      end

      def callback_url
        full_host + script_name + callback_path
      end

      def raw_info
        @raw_info ||= begin
          data = JSON.parse(
            access_token.get('/v2/whoami').body
          )['data']

          if data.key?('user') && !data['user'].nil?
            data['user'].merge('type' => 'user')
          else
            data['account'].merge('type' => 'account')
          end
        end
      end

      protected

      def build_access_token
        verifier = request.params['code']
        params   = { redirect_uri: callback_url,
                     state: request.params['state'] }
                   .merge(token_params.to_hash(symbolize_keys: true))

        client.auth_code.get_token(verifier, params,
                                   deep_symbolize(options.auth_token_params))
      end
    end
  end
end
