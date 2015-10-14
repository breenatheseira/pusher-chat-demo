class ChatMessagesController < ApplicationController
  def index
  	@chat_message = ChatMessage.new
  end
end
