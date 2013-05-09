require "story_gem/version"

if defined?(::OmniAuth::Strategies::OAuth2)
  require 'omniauth/strategies/story'
end

require "story_gem/base"
require "story_gem/calendar"
require "story_gem/event"

if defined?(::OAuth2)
  require "story_gem/oauth2"
end

require "story_gem/configurable"
require "story_gem/client"
require "story_gem/simple_client"

module StoryGem

  class << self
    include StoryGem::Configurable

  end

end

