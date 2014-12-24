require 'spec_helper'

describe Acme::Api::Ping do
  include Rack::Test::Methods

  def app
    Acme::App
  end

  it 'ping' do
    get '/ping'
    expect(last_response.status).to eq(200)
    expect(last_response.body).to eq({ ping: 'pong' }.to_json)
  end
end
