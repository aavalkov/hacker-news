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

  private
  def comment_params
    params.require(:comment).permit(:name, :link_id)
  end
end
