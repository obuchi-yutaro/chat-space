class MessagesController < ApplicationController

  def index
    @message = Message.new
  end

  def create
    Message.create
  end

  private
end
