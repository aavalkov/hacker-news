class VotesController < ApplicationController
  def create
    @vote = Vote.create(vote_params)
    redirect_to links_path
  end

  private
  def vote_params
    params.require(:vote).permit(:link_id)
  end
end
