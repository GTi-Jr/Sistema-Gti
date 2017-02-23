class MembersController < ApplicationController
  layout 'member_dashboard'
  before_action :get_member
  before_action :auth_director
  def show
  end

  def index
    @members = Member.all.order('id DESC').paginate(page: params[:page], per_page: 50)
  end

  def auth_director
    if @member.role.role_type != 1
      redirect_to  "/" , notice: 'Você não possui permissão para acessar a página.'
    end
  end
end
