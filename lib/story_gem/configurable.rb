module StoryGem
  module Configurable
    attr_writer :consumer_key, :consumer_secret, :oauth_token
    attr_accessor :endpoint


    class << self

      def keys
        @keys ||= [
            :consumer_key,
            :consumer_secret,
            :oauth_token,
            :endpoint
        ]
      end

    end

    # Convenience method to allow configuration options to be set in a block
    def configure
      yield self
      self
    end

  end
end
