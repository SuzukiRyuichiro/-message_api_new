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
end
