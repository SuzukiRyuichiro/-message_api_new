class Api::V1::MessagesController < ApplicationController
  def index
    @channel = Channel.find_by(name: params[:channel_id])
    if @channel
      @messages = @channel.messages
      render json: { channel: @channel, messages: @messages}
    else
      render json: { channel: "not found", messages: []}
    end
  end

  def create
    message = Message.new(content: params[:content], author: params[:author], channel: Channel.find_by(name: params[:channel_id]))
    if message.save
      render json: { status: 'SUCCESS', message: message }
    else
      render json: { status: 'ERROR', errors: message.errors, params: params }
    end
  end
end
