class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password]
    )
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Complete!"
      redirect_to("/users/#{@user_id}")
    else
      render("users/new")
    end
  end

  def login_form
  end
end
