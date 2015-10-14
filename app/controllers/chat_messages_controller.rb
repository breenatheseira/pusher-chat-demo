class ChatMessagesController < ApplicationController
  def index
  	@chat_message = ChatMessage.new
  end

  def create
  	@chat_message = ChatMessage.new(params[:chat_message])
  	respond_to { |format| format.js }
  end
end
