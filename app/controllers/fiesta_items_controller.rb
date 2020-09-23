class FiestaItemsController < ApplicationController
  def index
    #@items = FiestaItem.where("name ILIKE ?", "%#{params[:term]}%").map{|item| {:id=>item.id,:text => item.name}}
    @items = FiestaItem.where(name: params[:search]).map{|item| { id: item.id, text: item.name}}

    respond_to do |format|
      format.html
      format.json {
        render json: @items
      }
    end
  end
end