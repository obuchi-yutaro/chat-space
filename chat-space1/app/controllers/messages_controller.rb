class MessagesController < ApplicationController

  def index
    @messages = Message.includes(:user).order('id DESC')
    # @message = Message.new
  end

  def create
    Message.create(message_params)
    redirect_to action: 'index'
  end

  private
  def message_params
    params.permit(:text)
  end
end
