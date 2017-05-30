class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :load_backpack
 
  private

  def load_backpack
    @backpack ||= Backpack.new(session[:backpack])
  end
end
