class MemberDashboardController < ApplicationController
  layout 'member_dashboard'
  # before_action :authenticate_member
  before_action :get_member

  def index

  end

end
