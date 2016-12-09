require 'hanami/utils/hash'

module Web
  module Controllers
    module Sessions
      class CreateParams
        OMNIAUTH_AUTH = 'omniauth.auth'.freeze

        def initialize(env)
          uid   = env.dig(OMNIAUTH_AUTH, 'uid')
          info  = env.dig(OMNIAUTH_AUTH, 'info')
          token = env.dig(OMNIAUTH_AUTH, 'credentials', 'token')

          @params = Hanami::Utils::Hash.new(info.merge('uid' => uid, 'token' => token)).symbolize!
        end

        def [](key)
          params[key]
        end

        def to_h
          params.to_h
        end

        alias to_hash to_h

        private

        attr_reader :params
      end
    end
  end
end
