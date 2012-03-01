class AdminUsersController < ApplicationController
	layout 'admin'
	before_filter :confirm_logged_in
	def index
		render(:controller => 'access', :action => 'login')
	end
	def list
		
	end
end
