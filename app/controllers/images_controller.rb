class ImagesController < ApplicationController

	before_action :set_image, only: [:show, :edit, :update, :destroy]
	before_action :user_log, only: [:index, :show, :edit, :update, :destroy]
	
	def index
	end

	def new
		@image = Image.new
	end

	def create
		@image = current_user.images.create(image_params)
		#render plain: params[:image].inspect
		#@image = Image.create(image_params)

		redirect_to images_path

	end

	def show
	end

	def edit
	end

	def update
		@image.update image_params
		redirect_to images_path
	end

	def destroy
		@image.destroy 
		redirect_to images_path
	end

	private 

	def image_params
		params.require(:image).permit(:description, :picture)
	end

	def set_image
		
		@image = Image.find params[:id]
	end

	def user_log
		@images = Image.where user_id: current_user.id
	end


end
