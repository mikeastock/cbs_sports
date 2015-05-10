require "faraday"
require "faraday_middleware"
require "hashie"

module CBSSports
  class Client
    include CBSSports::Client::Players

    attr_reader :response_format

    def initialize(response_format: :json)
      @response_format = response_format
    end

    private

    def get(path, options={})
      build_response(connection.get(path, options.merge(default_options)))
    end

    def build_response(response)
      if json?
        JSON.parse(response.body, object_class: Hashie::Mash)
      end
    end

    def json?
      response_format == :json
    end

    def default_options
      {
        version: 3.0,
        SPORT: :baseball,
        response_format: response_format
      }
    end

    def connection
      @connection ||= build_connection
    end

    def build_connection
      Faraday.new("http://api.cbssports.com/fantasy") do |conn|
        conn.request :json
        conn.response :logger
        conn.use :instrumentation
        conn.adapter Faraday.default_adapter
      end
    end
  end
end
