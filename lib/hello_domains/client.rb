require "dnsimple"
require "delegate"

module HelloDomains
  class Client < SimpleDelegator
    def initialize(access_token:)
      super(Dnsimple::Client.new(base_url: ENV['DNSIMPLE_BASE_URL'], user_agent: ENV['DNSIMPLE_USER_AGENT'], access_token: access_token))
    end
  end
end
