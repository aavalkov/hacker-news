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

  def edit
    @link = Link.find(params[:id])
  end

  def update
    @link = Link.find(params[:id])
    if @link.update(link_params)
      flash[:notice] = "Link updated."
      redirect_to links_path
    else
      render 'edit'
    end
  end

  def show
    @link = Link.find(params[:id])
    @vote = Vote.new
    @comment = Comment.new
    @comments = Comment.all
  end

  def destroy
    @link = Link.find(params[:id])
    @link.destroy
    flash[:notice] = "Link Deleted."
    redirect_to links_path
  end

private
  def link_params
    params.require(:link).permit(:name)
  end
end
