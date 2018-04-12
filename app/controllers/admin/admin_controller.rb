class Admin::AdminController < ApplicationController
	before_action :authenticate_user!
	before_action :check_admin , if: :user_signed_in?

	protected

	def check_admin
		redirect_to root_path, alert: 'У Вас нет доступа к этой странице' unless current_user.admin?
	end

end