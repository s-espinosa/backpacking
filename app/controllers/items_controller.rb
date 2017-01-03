class ItemsController < ApplicationController
  def index
    @items    = Item.all
    @backpack = Backpack.new
  end
end
