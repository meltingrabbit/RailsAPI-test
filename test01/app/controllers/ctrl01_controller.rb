class Ctrl01Controller < ApplicationController

	def index
		json = {name: 'test', age: 5}
		render :json => json
	end
end
