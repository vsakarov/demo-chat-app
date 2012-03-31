class MessagesController < ApplicationController
  before_filter :authenticate_chatter!

  # GET /messages
  def index
    @room = Room.find(params[:room_id])
    @messages = @room.messages
    @message = Message.new

    respond_to do |format|
      format.html # index.html.erb
      format.js do
        last = params[:last].to_i
        @new_messages = Message.where('room_id = ? AND id > ?', @room.id, last)
      end
    end
  end

  # POST /messages
  def create
    @message = Message.new(params[:message])
    @message.chatter = current_chatter

    @room = Room.find(params[:room_id])
    @message.room = @room
    @messages = @room.messages

    respond_to do |format|
      if @message.save
        format.html { redirect_to room_messages_path(@room), notice: 'Message was successfully created.' }
        format.js
      else
        format.html { render action: "index" }
      end
    end
  end

end
