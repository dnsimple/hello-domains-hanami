module Web
  module Views
    module Authentication
      def signed_in?
        !current_user.nil?
      end
    end
  end
end
