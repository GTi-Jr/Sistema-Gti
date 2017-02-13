class MemberDashboardController < ApplicationController
  layout 'member_dashboard'
  before_action :authenticate_user
  before_action :get_user

  def index

  end

end
