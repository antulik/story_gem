require 'story_gem/configurable'
require 'story_gem/api'

require 'httparty'

module StoryGem
  class SimpleClient
    include ::HTTParty
    include StoryGem::API

    base_uri 'www.hoodb.com'

    attr_accessor :api_key

    def initialize(api_key, options = {})
      self.api_key = api_key
      self.class.base_uri(options[:base_uri]) if options[:base_uri]
      self.class.default_params :api_key => api_key
    end

    def get path, params, options = {}
      self.class.get(path, params)
    end

    def post path, params, options = {}
      self.class.post(path, params)
    end

    def put path, params, options= {}
      self.class.put(path, params)
    end

    def delete
      self.class.delete(path, params)
    end

  end

end
