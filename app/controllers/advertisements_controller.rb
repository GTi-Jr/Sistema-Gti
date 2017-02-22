class AdvertisementsController < ApplicationController
layout 'member_dashboard'
before_action :get_member
def index
  @advertisements = Advertisement.all.order('id DESC').paginate(page: params[:page], per_page: 50)
end

def new
  @advertisement = Advertisement.new
end

def create
  @advertisement = Advertisement.new(advertisement_params)
  # @advertisement.name = @advertisement.name.mb_chars.upcase
  respond_to do |format|
  #3if @categories.name = !Category.name.empty?
    if @advertisement.save
      format.html { redirect_to advertisements_path, notice: 'Advertência criada com sucesso!' }
    else
      format.html { render :new }
      #format.json { render json: @categories.errors, status: :unprocessable_entity }
    end
  #else
    format.html { render :new }
   #end
  end
end

def edit
end

def update
  respond_to do |format|
    if @advertisement.update(advertisement_params)
      format.html { redirect_to  advertisements_path , notice: 'Advertência foi editada com sucesso.' }
    else
       format.html { render :edit }
       #format.json { render json: @categories.errors, status: :unprocessable_entity }
    end
  end
end

def destroy
  @categories = Category.find(params[:id])
  SubCategory.where(category: params[:id]).destroy_all
  @categories.destroy
  respond_to do |format|
    format.html { redirect_to categories_path(@categories) }
    format.xml  { head :ok }
  end

  @advertisement = Advertisement.find(params[:id])
  @advertisement.destroy
  respond_to do |format|
    format.html {redirect_to advertisements_path(@advertisement)}
    format.xml{head :ok}
  end
end

def advertisement_params
    params.require(:advertisement).permit(:date, :reason,:member_id)
end
# def search
#   @advertisement_suggestions = SearchTable.searchcategory(queryString: params[:queryString].strip.downcase)
#
#   render json: @categories_suggestions
# end

end
