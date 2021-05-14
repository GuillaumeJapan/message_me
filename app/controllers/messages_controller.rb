class MessagesController < ApplicationController
  before_action :require_user

  def create
    @message = current_user.messages.build(message_params)
    if @message.save
      ActionCable.server.broadcast 'chatroom_channel',
                                    { content: format_message(@message) }
    end
  end

  private
    def message_params
      params.require(:message).permit(:body)
    end

    def format_message(mess) 
      render(partial: 'message', locals: {message: mess})  # message est la variable utilisée dans le partial _message.html.erb
    end

end