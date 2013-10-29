require 'spec_helper'

describe Acme::Api::Ping do
  include Rack::Test::Methods

  def app
    Acme::App
  end

  it "ping" do
    get "/ping"
    last_response.status.should == 200
    last_response.body.should == { ping: "pong" }.to_json
  end
end

