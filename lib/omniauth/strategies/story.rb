module OmniAuth
  module Strategies
    class Story < ::OmniAuth::Strategies::OAuth2
      # change the class name and the :name option to match your application name
      option :name, :story

      option :client_options, {
          #:site          => "http://localhost:3000", # overwrite in initializer
          :authorize_url => "/oauth/authorize"
      }

      uid { raw_info["id"] }

      info do
        {
            :email => raw_info["email"]
        # and anything else you want to return to your API consumers
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/api/v1/me.json').parsed
      end
    end
  end
end