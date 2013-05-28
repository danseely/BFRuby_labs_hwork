require 'minitest/autorun'
require_relative 'photo'

# tests for Photo class

describe Photo do
  
  it 'has an url field' do
    p = Photo.new('myphoto.com')
    p.url.must_equal 'myphoto.com'
  end


end