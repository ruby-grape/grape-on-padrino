require 'spec_helper'

describe Acme::Api::Ping do
  it 'rake routes' do
    rc = `rake routes`
    expect(rc).to include '(:API)      GET    /ping(.json)'
  end
end
