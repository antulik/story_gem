module StoryGem
  module Configurable
    attr_writer :consumer_key, :consumer_secret, :oauth_token, :oauth_token_secret
    attr_accessor :endpoint, :connection_options, :identity_map, :middleware

    # Convenience method to allow configuration options to be set in a block
    def configure
      yield self
      self
    end

  end
end
