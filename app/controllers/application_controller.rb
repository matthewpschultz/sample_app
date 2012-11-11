class ApplicationController < ActionController::Base
  protect_from_forgery
  after_filter :set_no_cache
  private
  def set_no_cache
    headers['Cache-Control'] = 'no-cache'
  end
end
