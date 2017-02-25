class MembersController < ApplicationController
  layout 'member_dashboard'
  before_action :get_member
  before_action :auth_director
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
      @advertisement = Advertisement.find(params[:id])
      respond_to do |format|
          if @advertisement.update(advertisement_params)
              format.html { redirect_to advertisements_path, notice: 'Advertência foi editada com sucesso.' }
          else
              format.html { render :edit }
              # format.json { render json: @advertisement.errors, status: :unprocessable_entity }
          end
      end
  end



end
