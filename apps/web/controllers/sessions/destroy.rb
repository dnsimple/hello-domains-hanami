module Web::Controllers::Sessions
  class Destroy
    include Web::Action

    def call(*)
      session[:user_id] = nil

      redirect_to routes.root_url
    end
  end
end
