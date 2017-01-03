class BackpacksController < ApplicationController
  include ActionView::Helpers::TextHelper

  def create
    item = Item.find(params[:item_id])
    backpack = session[:backpack] || {}
    backpack[item.id.to_s] ||= 0
    backpack[item.id.to_s] += 1
    session[:backpack] = backpack
    flash[:notice] = "You now have #{pluralize(backpack[item.id.to_s], item.name)}."
    redirect_to root_path
  end
end
