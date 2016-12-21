module Web::Controllers::Home
  class Index
    include Web::Action
    expose :domains

    def call(params)
      return unless signed_in?

      client = Dnsimple::Client.new(base_url: "https://api.sandbox.dnsimple.com", access_token: current_user.token)
      @domains = client.domains.list_domains(current_user.uid).data
    end
  end
end
