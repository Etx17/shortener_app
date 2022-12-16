class LinksController < ApplicationController
  def index
  end

  def new
    @link = Link.new()
    @link.user = current_user
  end

  def create
    @link = Link.new(params[:link])
    render 'new' unless @link.save
  end

  def show
  end

  def destroy
    @link = Link.find(params[:id])
    @link.destroy
    # No need for app/views/restaurants/destroy.html.erb
    redirect_to links_path
  end

  private

  def restaurant_params
    params.require(:link).permit(:name, :destination_url, :short_url)
  end
end
