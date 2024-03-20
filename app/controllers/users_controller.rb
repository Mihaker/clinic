class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])

    if params[:category_id].present?
      @doctors = Doctor.where(category_id: params[:category_id])
    else
      @doctors = Doctor.all
    end
  end
end
