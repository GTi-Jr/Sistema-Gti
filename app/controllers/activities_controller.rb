class ActivitiesController < ApplicationController
    layout 'member_dashboard'
    before_action :get_member
    before_action :auth_director
    before_action :set_activity, only: [:show, :edit, :update, :destroy]

    def index
        @activities = Activity.all.order('id DESC').paginate(page: params[:page], per_page: 50)
    end

    def new
        @activity = Activity.new
    end

    def create
        @activity = Activity.new(activity_params)
        # @activity.name = @activity.name.mb_chars.upcase
        respond_to do |format|
            # 3if @activity.name = !Category.name.empty?
            if @activity.save
                format.html { redirect_to activities_path, notice: 'Advertência criada com sucesso!' }
            else
                format.html { render :new }
                # format.json { render json: @activity.errors, status: :unprocessable_entity }
            end
            # else
            format.html { render :new }
            # end
        end
    end

    def edit
    end

    def update
        @activity = Activity.find(params[:id])
        respond_to do |format|
            if @activity.update(activity_params)
                format.html { redirect_to activities_path, notice: 'Atividade foi editada com sucesso.' }
            else
                format.html { render :edit }
                # format.json { render json: @activity.errors, status: :unprocessable_entity }
            end
        end
    end

    def destroy
        @activity.destroy
        respond_to do |format|
            format.html { redirect_to activities_path(@activity) }
            format.xml { head :ok }
        end
    end

    def activity_params
        params.require(:activity).permit(:date, :reason, :member_id)
    end

    # def search
    #   @activity_suggestions = SearchTable.searchcategory(queryString: params[:queryString].strip.downcase)
    #
    #   render json: @activity_suggestions
    # end
    def set_activity
        @activity = Activity.find(params[:id])
    end


end
