class Api::V1::MessagesController < ApplicationController
  def index
    @messages = Message.all
    render json: { status: 'SUCCESS', message: 'Loaded posts', data: posts }
  end
end
