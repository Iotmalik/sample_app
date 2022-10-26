ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
  include ApplicationHelper

  # Возвращает true, если тестовый пользователь вошел.
  def is_logged_in?
    !session[:user_id].nil? 
  end

  # Выполняет вход тестового пользователя.
  def log_in_as(user)
    session[:user_id] = user.id
  end

  private

    # Возвращает true внутри интеграционного теста. 
    def integration_test?
      defined?(post_via_redirect) 
    end 
  # Add more helper methods to be used by all tests here...
end
