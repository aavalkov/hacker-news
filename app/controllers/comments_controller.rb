class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      flash[:notice] = "Comment Added"
      redirect_to links_path
    else
      'edit'
    end
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      flash[:notice] = "Comment Updated"
      redirect_to comment_path(@comment)
    else
      render 'edit'
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:name, :link_id)
  end
end
