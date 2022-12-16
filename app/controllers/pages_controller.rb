class PagesController < ApplicationController
  before_action :authenticate_admin, only: :dashboard
  def home
  end

  def dashboard
  end

  def authenticate_admin
    redirect_to root_path unless current_user.admin
  end
  
end
