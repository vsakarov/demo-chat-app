class RoomsController < ApplicationController
  before_filter :authenticate_chatter!

  # GET /rooms
  def index
    @rooms = Room.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /rooms/1
  def show
    @room = Room.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /rooms/new
  def new
    @room = Room.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /rooms/1/edit
  def edit
    @room = Room.find(params[:id])
  end

  # POST /rooms
  def create
    @room = Room.new(params[:room])
    @room.chatter = current_chatter

    respond_to do |format|
      if @room.save
        format.html { redirect_to rooms_path, notice: 'Room was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /rooms/1
  def update
    @room = Room.find(params[:id])

    respond_to do |format|
      if @room.update_attributes(params[:room])
        format.html { redirect_to @room, notice: 'Room was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /rooms/1
  def destroy
    @room = Room.find(params[:id])
    @room.destroy

    respond_to do |format|
      format.html { redirect_to rooms_url }
    end
  end
end
