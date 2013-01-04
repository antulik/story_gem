module StoryGem
  class Event < ::StoryGem::Base

    attr_reader :id, :calendar_id, :summary, :description, :external_id, :start, :end,
        :created_at, :updated_at, :size


  end
end
