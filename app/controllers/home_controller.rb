class HomeController < ApplicationController
  def index
    redirect_to page_path('home') and return unless user_signed_in?
  end
end