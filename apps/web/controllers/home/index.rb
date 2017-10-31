module Web::Controllers::Home
  class Index
    include Web::Action
    expose :domains

    def call(params)
      return unless signed_in?

      client = HelloDomains::Client.new(access_token: current_user.token)
      @domains = client.domains.list_domains(current_user.uid).data
    end
  end
end
