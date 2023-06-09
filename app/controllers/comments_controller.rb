class CommentsController < ApplicationController
  before_action :set_post

  def create
    comment = @post.comments.create!(comment_params)
    # Send the email later, using a background job.
    # If it was deliver_now, it would be sent immediately.
    CommentsMailer.submitted(comment).deliver_later
    redirect_to @post
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def comment_params
    params.required(:comment).permit(:content)
  end
end
