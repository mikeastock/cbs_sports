require "cbs_sports/client/players"
require "cbs_sports/client"
require "cbs_sports/version"

module CBSSports
  class << self
    # Alias for CBSSports::Client.new
    #
    # @return [CBSSports::Client]
    def client(response_format: :json, sport:)
      CBSSports::Client.new(response_format: response_format, sport: sport)
    end
  end
end
