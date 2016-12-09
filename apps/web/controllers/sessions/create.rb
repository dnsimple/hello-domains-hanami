module Web::Controllers::Sessions
  class Create
    include Web::Action

    def call(params)
      params = CreateParams.new(params.env)
      user   = UserRepository.new.find_or_create_by_uid(params[:uid], params)
      session[:user_id] = user.id

      redirect_to routes.root_url
    end
  end
end
