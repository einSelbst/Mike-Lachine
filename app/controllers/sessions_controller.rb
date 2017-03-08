class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(auth_hash)

    if user.valid?
      session[:user_id] = user.id
      redirect_to new_post_path, notice: "Any adventure lately?"
    end
  end

  def destroy
    reset_session
    redirect_to "/"
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
