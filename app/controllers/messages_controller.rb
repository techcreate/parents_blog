class MessagesController < ApplicationController
	def create
		message = Message.create(message_params)
		redirect_to :back
	end
	def show
		@message = Message.find(params[:id])
	end
	

	private
	def message_params
		params.require(:message).permit(:post_id, :author, :message)
	end
end
