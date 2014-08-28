class LinksController < ApplicationController
  def index
    @links = Link.all
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)
    if @link.save
      flash[:notice] = "Link added."
      redirect_to links_path
    else
      render 'new'
    end
  end

private
  def link_params
    params.require(:link).permit(:name)
  end
end
