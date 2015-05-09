# CBSSports
[![Circle CI](https://circleci.com/gh/mikeastock/cbs_sports/tree/master.svg?style=svg)](https://circleci.com/gh/mikeastock/cbs_sports/tree/master)

This gem is a Ruby wrapper around the CBSSports API

## Installation

Add this line to your application's Gemfile:

```ruby
gem "cbs_sports"
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cbs_sports

## Usage

### Client

When you create a client you can specify the response format you want. It defaults to JSON.
```ruby
client = CBSSports.client(response_format: :json)
```

### Players
```ruby
client.players
=> { "pro_status"=>"M", "firstname"=>"Martin", "photo"=>"https://www.cbssports.com/images/players/unknown-hat-170x170.png", "position"=>"SP", "fullname"=>"Martin Agosta", "lastname"=>"Agosta", "id"=>"2044515", "age"=>24, "pro_team"=>"SF" }
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/cbs_sports/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
