class FriendsController < ApplicationController
  before_action :set_friend, only: [:show, :update, :destroy, :setMyId]

  # GET /friends
  def index
    @friends = Friend.all

    render json: @friends
  end

  # GET /friends/1
  def show
    render json: @friend
  end

  # POST /friends
  def create
    puts "====================="
    puts params
    puts "====================="
    @friend = Friend.new(friend_params)
    # puts "====================="
    # puts @friend.id
    # puts @friend.name
    # puts "====================="

    if @friend.save
      puts "====================="
      puts @friend.id
      puts @friend.name
      puts "====================="

      @friend.my_id = @friend.id + 1
      @friend.save
      render json: @friend, status: :created, location: @friend
    else
      render json: @friend.errors, status: :unprocessable_entity
    end

  end

  # PATCH/PUT /friends/1
  def update
    if @friend.update(friend_params)
      render json: @friend
    else
      render json: @friend.errors, status: :unprocessable_entity
    end
  end

  # DELETE /friends/1
  def destroy
    @friend.destroy
  end

  # POST /friends/setMyId/1
  def setMyId
    prm = myId_params
    puts "====================="
    puts prm
    puts "@friend.id     : #{@friend.id}"
    puts "@friend.my_id  : #{prm[:new_id]}"
    puts "====================="
    if @friend.update({my_id: prm[:new_id]})
      render json: @friend
    else
      render json: @friend.errors, status: :unprocessable_entity
    end
  end

  # POST /friends/searchMyId
  def searchMyId

  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_friend
      @friend = Friend.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def friend_params
      params.require(:friend).permit(:name, :address, :description, :my_id)
    end
    def myId_params
      params.require(:friend).permit(:my_id, :new_id)
    end
end
