class Manage::ItemsController < Manage::ApplicationController
  def new
    @item = Item.new
  end

  def create
    @item = current_user.items.new(item_params)

    if @item.save
      redirect_to manage_root_path, success: t('.success')
    else
      render :new
    end

  end

  private

  def item_params
    params.require(:item).permit(
      :name,
      :description,
      :copper,
      :silver,
      :gold,
      :gem,
    )
  end
end