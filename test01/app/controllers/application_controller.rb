class ApplicationController < ActionController::API

	def index
		json = {name: 'Test', age: 5}
		render :json => json
	end
end
