class Manage::ItemsController < Manage::ApplicationController
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)

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
    ).merge({
      author_id: current_user.id
    })
  end
end