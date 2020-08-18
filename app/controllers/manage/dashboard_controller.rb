class Manage::DashboardController < Manage::ApplicationController
  def index
    @items = Item.where(author_id: current_user.id)
  end
end