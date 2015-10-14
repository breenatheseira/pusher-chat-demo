class ChatMessagesController < ApplicationController
  def index
  	@chat_message = ChatMessage.new

  	# Pusher.get('chat','new_message')

  end

  def create
  	@chat_message = ChatMessage.new(params[:chat_message])
  	logger.info "app id: #{ENV['PUSHER_APP_ID']}"
  	logger.info "key: #{ENV['PUSHER_KEY']}"
  	logger.info "secret: #{ENV['PUSHER_SECRET']}"

  	Pusher.trigger('chat','new_message', {
  		name: @chat_message.name,
  		message: @chat_message.message
  		})

  	respond_to :js
  end
end
