# StoryGem

A simple client to work with StoryLine app API.

## Installation

Add this line to your application's Gemfile:

    gem 'story_gem', :git => 'git://github.com/antulik/story_gem.git'

## Usage

Configure the client

    StoryGem.configure do |config|
      config.consumer_key    = APP_ID
      config.consumer_secret = APP_SECRET
      config.endpoint        = APP_URL
    end


Then you can initiate a client

    client = StoryGem::Client.new(:oauth_token => 'story_line_token_here')



### calendars

    client.calendars

### calendar_create

    client.calendar_create({
        summary:           "Twitter home timeline"
        external_type:     'home_timeline',
        external_id:       '313',
        color:             "#33ccff"
    })

### events_import

    events = [{
        :external_id => '47273123',
        :summary     => 'Summary description',
        :description => "Full description of the event",
        :size        => 45,
        :start       => '2013-01-05T14:28:46+10:00'
    }]
    client.events_import(calendar_id, events)


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
