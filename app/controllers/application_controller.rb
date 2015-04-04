class ApplicationController < ActionController::Base
  protect_from_forgery

  def welcome_message
     "welcome to library info"
  end
end
