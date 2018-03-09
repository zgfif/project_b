class UsersController < ApplicationController
	before_action :authenticate_user!, :check_rights	
	
	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update(user_params)
			redirect_to @user
		else 
			render 'edit'
		end
	end

	private

	def check_rights
		redirect_to root_path, alert: 'У Вас нет доступа к этой странице' unless current_user.admin?||current_user.id.to_i == params[:id].to_i
	end
	def user_params
		params.require(:user).permit(:firstname, :lastname, :phone)
	end
end
