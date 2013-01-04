require 'spec_helper'

describe StoryGem::Client do

  it 'should pass' do
    opts = {
        :consumer_key    => '44d7f7ecee7effae152dbd7920296534d48c3d317715c7530bddff1fb90f9351',
        :consumer_secret => 'ab3f529d1a596f0b02d04482c1ec5b6c3ebeac14919b5ec57ddb9a78e0726515',
        :oauth_token     => '6cddefbbfa1f7ed3b8f5e4ccacfa32b89bd85747ee5103aa4cafcb1f6c9d4b88',
        :endpoint        => 'http://localhost:3000'
    }

    client = StoryGem::Client.new(opts)
    puts client.list_calendars.first.inspect
  end
end
