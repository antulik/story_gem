require 'story_gem/configurable'
require 'story_gem/api'

module StoryGem
  class SimpleClient
    include StoryGem::API
    include ::HTTParty

    base_uri 'hoodb.com'

    attr_accessor :api_key

    def initialize(api_key, options = {})
      self.api_key = api_key
      self.base_uri = option[:base_uri] if option[:base_uri]
    end

    def get path, params, options = {}
      self.class.get(path, params.merge(common_hash))
    end

    def post path, params, options = {}
      self.class.post(path, params.merge(common_hash))
    end

    def put path, params, options= {}
      self.class.put(path, params.merge(common_hash))
    end

    def delete
      self.class.delete(path, params.merge(common_hash))
    end

    private

    def common_hash
      {
          :api_key => api_key
      }
    end

  end

end
