# coding: utf-8

class Ctrl01Controller < ApplicationController


	def index
		json = {name: 'test', age: 5}
		# render :json => json
		render :json => user_params
	end


	def create
		# json = {name: 'test', age: 115}
		# render :json => user_params
		render :text => user_params.to_json_raw_object
		# render :json => 'hogehoge'
		# render :json => json
	end

	private
		def user_params
			# params.require(:disc).permit(:d)
			params.require(:user).permit(:name, :age)
			# params.require(:disc)
			# (params[:disc]).encoding.to_s
			# pr = {}
			# # pr[:disc] = 2
			# # pr[:name] = 2
			# # pr[:age ] = 2
			# pr[:disc] = params[:disc][:d]
			# pr[:name] = params[:user][:name]
			# pr[:age ]= params[:user][:age]
			# return "hogehoge"
			# params[:user][:name]
			# pr = {name: name, age: age, disc: disc}
			# pr = {name: name, age: age, disc: disc}
			# return pr
		end


end
