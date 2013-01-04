require "story_gem/version"
require 'omniauth/strategies/story'

require "story_gem/base"
require "story_gem/calendar"
require "story_gem/event"
require "story_gem/oauth2"

require "story_gem/configurable"
require "story_gem/client"

module StoryGem

  class << self
    include StoryGem::Configurable

  end

end

