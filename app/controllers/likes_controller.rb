class LikesController < ApplicationController
  def create
    post = Post.find(params.require(:post_id))
    post.likes.find_or_create_by(user: current_user)
  end
end
