class LinksController < ApplicationController

  def new
    @link = Link.new
    @link.user = current_user
  end

  def create
    @link = Link.new(link_params)
    @link.user = current_user

    if @link.valid?
      @link.short_url = helpers.shorten(@link)
      @link.save!
      redirect_to root_path
    else
      flash[:error] = @link.errors.full_messages
      render 'new'
    end
  end

  def destroy
    @link = Link.find(params[:id])
    @link.destroy
    redirect_to admin_path
  end

  private

  def link_params
    params.require(:link).permit(:title, :destination_url, :short_url)
  end
end
