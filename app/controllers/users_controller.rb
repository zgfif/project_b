class UsersController < ApplicationController
	before_action :authenticate_user!	
	
	def show
		if own_profile?||current_user.admin?
		@user = User.find(params[:id])
		else
			redirect_to root_path, alert: 'Not your page'
	 	end
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

	def own_profile?
		if current_user.id.to_i == params[:id].to_i
			true
		end
	end

	def user_params
		params.require(:user).permit(:firstname, :lastname, :phone)
	end
end
