#require 'configurable'
#
#module StoryGem
#  class Client
#    include Twitter::Configurable
#
#    def initialize(options={})
#      StoryGem::Configurable.keys.each do |key|
#        instance_variable_set(:"@#{key}", options[key] || StoryGem.instance_variable_get(:"@#{key}"))
#      end
#    end
#
#  end
#
#end
