require 'story_gem/configurable'
require 'story_gem/api'

module StoryGem
  class Client
    include StoryGem::Configurable
    include StoryGem::API

    def initialize(options={})
      StoryGem::Configurable.keys.each do |key|
        instance_variable_set(:"@#{key}", options[key] || StoryGem.instance_variable_get(:"@#{key}"))
      end
    end

    def access_token
      @access_token ||= ::StoryGem::OAuth2::Token.new(@consumer_key, @consumer_secret, @oauth_token, @endpoint)
    end


    def get path, params, options = {}
      access_token.get(path, params)
    end

    def post path, params, options = {}
      access_token.post(path, params)
    end

    def put path, params, options= {}
      access_token.put(path, params)
    end

    def delete
      access_token.delete(path, params)
    end

  end

end
