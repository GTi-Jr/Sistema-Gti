class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def get_user
    @member = current_user
  end

end
