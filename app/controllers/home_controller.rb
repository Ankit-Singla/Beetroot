class HomeController < ApplicationController
	def index
	end	

	def upload_image
		byebug
	  	uploaded_file = params[:image]
	  	byebug
	  	filename = uploaded_file.original_filename
	  	# filename = SecureRandom.hex + "." +uploaded_file.original_filename.split('.')[1]
	  	filepath = Dir.pwd + "/public/uploads/" + filename
	  	File.open(filepath,'wb') do |file|
	  		file.write(uploaded_file.read())
	  	end

	  	current_user.profile_picture = filename
	  	current_user.save!
	  	return redirect_to '/users/edit'
	end
end
