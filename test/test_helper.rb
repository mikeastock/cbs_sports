$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "cbs_sports"

require "webmock/minitest"
require "minitest/autorun"
require "codeclimate-test-reporter"
CodeClimate::TestReporter.start
