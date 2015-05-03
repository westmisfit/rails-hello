# simplecov   https://github.com/colszowka/simplecov
# coverage    https://coveralls.zendesk.com/hc/en-us/articles/201769485-Ruby-Rails

require 'simplecov'
require 'coveralls'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]

SimpleCov.start do
  add_group "Models", "app/models"
  add_group "Controllers", "app/controllers"
  add_group 'Helpers', 'app/helpers'
  add_group 'Libraries', 'lib'
end

ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rails/test_help'
