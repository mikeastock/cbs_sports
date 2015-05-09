module CBSSports
  class Client
    module Players
      def players
        get("players/list").body.players
      end
    end
  end
end
