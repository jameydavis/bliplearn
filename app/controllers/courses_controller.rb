class CoursesController < ApplicationController
  before_filter :authenticate_user!
  after_action :verify_authorized

  def index
    @users = User.all
    authorize User
  end

  def show
    @user = User.find(params[:id])
    authorize @user
  end

  def destroy
  end

  private

  def secure_params
    params.require(:user).permit(:role)
  end

end
