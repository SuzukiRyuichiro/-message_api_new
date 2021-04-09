class Api::V1::ChannelsController < ApplicationController
  def index
    @channels = Channel.all
    render json: {channels: @channels}
  end

  def create
    @channel = Channel.new(params)
  end
end
