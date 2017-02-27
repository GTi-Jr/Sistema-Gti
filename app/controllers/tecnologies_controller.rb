class TecnologiesController < ApplicationController
  layout 'member_dashboard'
  before_action :get_member
  before_action :auth_director
  before_action :set_tecnology, only: [:show, :edit, :update, :destroy]

  def index
      @tecnologies = Tecnology.all.order('id DESC').paginate(page: params[:page], per_page: 50)
  end

  def new
      @tecnology = Tecnology.new
  end

  def create
      @tecnology = Tecnology.new(tecnology_params)
      # @tecnology.name = @tecnology.name.mb_chars.upcase
      respond_to do |format|
          # 3if @tecnology.name = !Category.name.empty?
          if @tecnology.save
              format.html { redirect_to tecnologies_path, notice: 'Advertência criada com sucesso!' }
          else
              format.html { render :new }
              # format.json { render json: @tecnology.errors, status: :unprocessable_entity }
          end
          # else
          format.html { render :new }
          # end
      end
  end

  def edit
  end

  def update
      @tecnology = Tecnology.find(params[:id])
      respond_to do |format|
          if @tecnology.update(tecnology_params)
              format.html { redirect_to tecnologies_path, notice: 'Advertência foi editada com sucesso.' }
          else
              format.html { render :edit }
              # format.json { render json: @tecnology.errors, status: :unprocessable_entity }
          end
      end
  end

  def destroy
      @tecnology.destroy
      respond_to do |format|
          format.html { redirect_to tecnologies_path(@tecnology) }
          format.xml { head :ok }
      end
  end

  def tecnology_params
      params.require(:tecnology).permit(:date, :reason, :member_id)
  end

  # def search
  #   @tecnology_suggestions = SearchTable.searchcategory(queryString: params[:queryString].strip.downcase)
  #
  #   render json: @tecnology_suggestions
  # end
  def set_tecnology
      @tecnology = Tecnology.find(params[:id])
  end
end
