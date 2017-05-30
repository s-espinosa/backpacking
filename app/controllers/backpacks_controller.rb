class BackpacksController < ApplicationController
  include ActionView::Helpers::TextHelper

  def create
    @item     = Item.find(params[:item_id])
    @backpack.update_quantity(@item.id)
    session[:backpack] = @backpack.contents
    flash[:notice] = "You now have #{pluralize(@backpack.quantity_for(@item.id), @item.name)}."
    redirect_to root_path
  end
end
