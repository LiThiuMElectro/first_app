class AdminUsersController < ApplicationController
  
  layout 'admin'

  before_filter :confirm_logged_in
  
  def index
    list
    render('list')
  end
  
  def list
    @admin_users = AdminUser.sorted
  end
	def new
	@Adminusers = AdminUser.new
	end
	
	def create
		
	end
	
	def edit
	end
	
	def update
	end
	
	def delete
	end
	
	def destroy
	end
	
	def list
		
	end
end
