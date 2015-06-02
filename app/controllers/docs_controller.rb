class DocsController < ApplicationController
  USER_NAME, PASSWORD = 'angelfan', 'legend.123'

  before_filter :basic_authenticate

  layout false

  def index
  end

  private

  def basic_authenticate
    authenticate_or_request_with_http_basic do |user_name, password|
      user_name == USER_NAME && password == PASSWORD
    end
  end
end
