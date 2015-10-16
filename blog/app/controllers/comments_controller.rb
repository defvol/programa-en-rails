class CommentsController < ApplicationController
  def create
    permitted = params.require(:comment).permit(:body)
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create!(permitted)
    redirect_to @post
  end
end
