class MessagesController < ApplicationController

  def index
    @message = Message.new
  end

  def create
    binding.pry
    Message.create(create_params)
  end

  private
  def create_params
    params.require(:message).permit(:text)
  end
end
