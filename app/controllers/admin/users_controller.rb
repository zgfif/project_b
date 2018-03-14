class Admin::UsersController < Admin::AdminController
	def index
		@users = User.all
	end
	def destroy
		@user = User.find(params[:id])

		if @user.destroy
			redirect_to admin_users_path, alert: 'User was successfully desroyed!'
		# else 
			# render: 'admin_index', alert: 'Can not destroy this user'
		end
	end
end
