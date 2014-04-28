class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    redirect_to post_path(comment_params[:post_id])
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :post_id)
  end
end
