class MemberDashboardController < ApplicationController
  layout 'member_dashboard'
  # before_action :authenticate_member
  before_action :get_member

  def index
    # @members = Member.all.order('name DESC').paginate(page: params[:page], per_page: 50)
    @members = Member.left_outer_joins(:achievements).group("members.id")
    .order("SUM(achievements.value) DESC").paginate(page: params[:page], per_page: 10)

  end

end
