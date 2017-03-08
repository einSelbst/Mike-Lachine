class LikesController < ApplicationController
  def create
    post = Post.find(params.require(:post_id))
    post.likes.first_or_create(user: current_user)
  end
end
