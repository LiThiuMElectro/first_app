class PagesController < ApplicationController
	layout 'admin'
	def index
		list
		render('list')
	end
	
	
	def list
		@pages = Page.order("pages.position ASC")
	end
	
	
	def show
		@page = Page.find(params[:id])
	end
	
	
	def new
		@page = Page.new
		@page_count = Page.count + 1
		#@subjects = Subject.order('position ASC')
	end
	
	
	def create
		@subjects = Subject.order('position ASC')
		@Page = Page.new(params[:page])
		if @Page.save
			flash[:notice] = "New page saved"
			list
			render('list')
		else
			@page_count = Page.count + 1
			render('new')
		end
	end
	
	
	def edit
		@page = Page.find(params[:id])
		@page_count = Page.count
		@subjects = Subject.order('position ASC')
	end
	
	def update
		@page = Page.find(params[:id])
		if @page.update_attributes(params[:page])
		flash[:notice] = "Page updated successfully"
		list
		render('list')
	else 
		@page_count = Page.count
		render('edit')
		end	
	end
	def delete
	 	@page = Page.find(params[:id])
 	end
 	
 	def destroy
 	name = Page.find(params[:id]).name
 	Page.find(params[:id]).destroy
 	flash[:notice] = "Your page was #{name} destroyed"
 	redirect_to(:action => 'list')
 	 end
end
