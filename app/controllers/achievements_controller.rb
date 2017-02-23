class AchievementsController < ApplicationController
  layout 'member_dashboard'
  before_action :get_member
  before_action :set_achievement, only: [:show, :edit, :update, :destroy]
  def index
    @achievements = Achievement.all.order('id DESC').paginate(page: params[:page], per_page: 50)
  end

  def new
    @achievement = Achievement.new
  end

  def edit
    @achievement = Achievement.find(params[:id])
  end

  def create
    @achievement = Achievement.new(achievement_params)
    respond_to do |format|
      if @achievement.save
        format.html { redirect_to achievements_path, notice: 'Conquista criada com sucesso!' }
      else
        format.html { render :new }
      end
      format.html { render :new }
    end
  end

  def update
    @achievement = Achievement.find(params[:id])
    respond_to do |format|
      if @achievement.update(achievement_params)
        format.html { redirect_to  achievements_path , notice: 'Conquista foi editada com sucesso.' }
      else
         format.html { render :edit }
      end
    end
  end

  def destroy
    @achievement = Achievement.find(params[:id])
    @achievement.destroy
    respond_to do |format|
      format.html { redirect_to achievements_path(@achievement), notice: "Conquista apagada com sucesso!" }
      format.xml  { head :ok }
    end
  end

  def achievement_params
      params.require(:achievement).permit(:name, :description,:value)
  end

  def set_achievement
    @achievement = Achievement.find(params[:id])
  end
end
