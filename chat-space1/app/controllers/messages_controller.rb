class MessagesController < ApplicationController

  def index
    @messages = Message.includes(:user).order('id DESC')
    # @message = Message.new
  end

  def create
    Message.create
  end

  private
  def message_params
    params.permit(:text)
  end
end
