require "story_gem/version"
require 'omniauth/strategies/story'

require "story_gem/configurable"

module StoryGem

  class << self
    include StoryGem::Configurable

    def configure
      super
      require "story_gem/calendar"
      require "story_gem/event"
      require "story_gem/oauth2"
      self
    end
  end

end

