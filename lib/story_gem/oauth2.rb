module StoryGem

  module OAuth2
    class Client < ::OAuth2::Client
      # Return a new OAuth2::Client object specific to the app.
      def initialize consumer_key, consumer_secret, endpoint
        super(
            consumer_key,
            consumer_secret,
            :site         => endpoint,
            :token_method => :post,
            :parse_json   => true
        )
      end
    end

    class Token < ::OAuth2::AccessToken
      # Return a new OAuth2::AccessToken specific to the app
      # and the user with the given token.
      def initialize(consumer_key, consumer_secret, token, endpoint)
        super(
            OAuth2::Client.new(consumer_key, consumer_secret, endpoint),
            token
        )
      end

      def calendars
        get('/api/v1/calendars.json').parsed['calendars']
      end
    end
  end
end
