require "test_helper"

class CBSSports::ClientTest < Minitest::Test
  def setup
    @client = CBSSports::Client.new(response_format: :json)
  end

  def test_response_type
    assert_equal :json, @client.response_format
  end
end
