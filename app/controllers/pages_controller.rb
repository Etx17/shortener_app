class PagesController < ApplicationController
  before_action :authenticate_admin, only: :dashboard
  def home
  end

  def dashboard
  end

  private

  def authenticate_admin
    current_user.admin
  end
end
