module Web
  module Controllers
    module Authentication
      def self.included(action)
        action.class_eval do
          expose :current_user, :signed_in?
        end
      end

      private

      def current_user
        @current_user ||= UserRepository.new.find(session[:user_id])
      end

      def signed_in?
        !current_user.nil?
      end
    end
  end
end
