class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end
  
  def edit
#    @user.image1.cache! unless @user.image1.blank?
#    @user.image2.cache! unless @user.image2.blank?
#    @user.image3.cache! unless @user.image3.blank?
#    @user.image4.cache! unless @user.image4.blank?
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end

  def show
  end
  
  def destroy
  end
  
  private
  
  def set_user
    @user = User.find(params[:id])
  end
  
  def user_params
    params.require(:user).permit(:name, :image1, :image2, :image3, :image4)
  end
end
