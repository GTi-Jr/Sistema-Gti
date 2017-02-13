class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def get_member
    @member = current_member
  end

end
