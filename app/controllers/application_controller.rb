class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def get_member
    @member = current_member
  end

  def auth_director
    if @member.role.role_type != 1
      redirect_to  "/" , notice: 'Você não possui permissão para acessar a página.'
    end
  end

end
