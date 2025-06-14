class MessagesController < ApplicationController
  before_action :authenticate_user!

  load_and_authorize_resource except: [:index]


  def new
    @message = Message.new
  end
  
  def create
    @message = Message.new(message_params)
    if @message.save
      redirect_to messages_path
    else
      render :new
    end
  end
  
  def index
    @messages = Message.all
  end

  def show
    @message = Message.find(params[:id])
  end
  def edit
  @message = Message.find(params[:id])
end

def update
  @message = Message.find(params[:id])
  if @message.update(message_params)
    redirect_to message_path(@message)
  else
    render :edit
  end
end

  private
  
  def message_params
    params.require(:message).permit(:body, :chat_id, :user_id)
  end
  

end
