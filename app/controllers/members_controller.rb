class MembersController < ApplicationController
  layout 'member_dashboard'
  before_action :get_member
  before_action :auth_director
  before_action :set_member, only: [:show, :edit, :update, :destroy]
  def show
  end

  def index
    @members = Member.all.order('id DESC').paginate(page: params[:page], per_page: 50)
  end

  def new
    @member = Member.new
  end

  def edit
  end

  def update
      @member = Member.find(params[:id])
      respond_to do |format|
          if @member.update(member_params)
              format.html { redirect_to advertisements_path, notice: 'Advertência foi editada com sucesso.' }
          else
              format.html { render :edit }
              # format.json { render json: @advertisement.errors, status: :unprocessable_entity }
          end
      end
  end
  def member_params
      params.require(:member).permit(:name, :email,:join_date, :course,:role)
  end
  def set_member
      @member = Member.find(params[:id])
  end

end
