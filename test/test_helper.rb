require File.expand_path("../../config/environment", __FILE__)

require "rails/test_help"
require "minitest/rails"
require "minitest/hell"
require "minitest/mock"
require 'mocha/mini_test'

# database cleaner
require "database_cleaner"
DatabaseCleaner.strategy = :transaction

ActiveRecord::Migration.check_pending!

# rubocop:disable Style/ClassAndModuleChildren
class ActionController::TestCase
  include Devise::TestHelpers

end

class ActiveSupport::TestCase

end
