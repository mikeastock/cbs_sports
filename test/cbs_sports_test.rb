require "test_helper"

class CBSSportsTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::CBSSports::VERSION
  end

  def test_client
    assert_instance_of CBSSports::Client, CBSSports.client(sport: :baseball)
  end
end
