class Manage::ItemsController < Manage::ApplicationController
  def new
    @item = Item.new
  end

  def create
    @item = current_user.items.new(item_params)

    if @item.save
      dd
      redirect_to manage_root_path, success: t('.success')
    else
      render :new
    end

  end

  private

  def item_params
    params.require(:item).permit(
      :fiesta_item_id,
      :note,
      :end,
      :str,
      :dex,
      :spr,
      :int,
      :copper,
      :silver,
      :gold,
      :gem,
      :hobs,
    )
  end
end