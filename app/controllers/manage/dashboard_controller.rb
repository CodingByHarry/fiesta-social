class Manage::DashboardController < Manage::ApplicationController
  def index
    @items = current_user.items
  end
end