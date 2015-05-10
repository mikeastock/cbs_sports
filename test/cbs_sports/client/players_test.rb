require "test_helper"

class CBSSports::Client::PlayersTest < Minitest::Test
  def setup
    @client = CBSSports::Client.new
  end

  def test_players
    stub_request(:get, "http://api.cbssports.com/fantasy/players/list?SPORT=baseball&response_format=json&version=3.0").
      to_return(status: 200, body: File.read("test/files/players.json"), headers: { "Content-Type" => "text/plain" })

    assert_equal 5884, @client.players.count
  end
end
