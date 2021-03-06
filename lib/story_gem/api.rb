module StoryGem
  module API

    def calendars
      options = {}
      collection_from_response(::StoryGem::Calendar, :get, "/api/v1/calendars.json", :body => options)
    end

    def calendar_create options = {}
      object_from_response(::StoryGem::Calendar, :post, "/api/v1/calendars.json", :body => {'calendar' => options})
    end

    def events_import calendar_id, params
      response = post("/api/v1/calendars/#{calendar_id}/events/import", :body => {'_json' => params})
      parsed(response)
    end



    def collection_from_response(klass, request_method, url, params={}, options={})
      response = send(request_method.to_sym, url, params, options)
      collection_from_array(klass, parsed(response))
    end

    def collection_from_array(klass, array)
      array.map do |element|
        klass.fetch_or_new(element)
      end
    end

    def object_from_response(klass, request_method, url, params={}, options={})
      response = send(request_method.to_sym, url, params, options)
      klass.from_response(response)
    end

    private

    def parsed response
      if response.respond_to? :parsed
        response.parsed
      elsif response.respond_to? :parsed_response
        response.parsed_response
      end
    end
  end
end