class PagesController < ApplicationController
  before_action :authenticate_admin, only: :dashboard

  def dashboard
    @links = Link.all
  end

  def authenticate_admin
    redirect_to root_path unless current_user.admin
  end
end
