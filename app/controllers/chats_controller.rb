class ChatsController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource
  def index
    @chats = Chat.for_user(current_user)
  end

  def show
    @chat = Chat.find(params[:id])
  end

  def new
    @chat = Chat.new
  end

  def create
    @chat = Chat.new(chat_params)
    @chat.sender_id = current_user.id
    # también puedes asignar @chat.receiver_id si es necesario
    if @chat.save
      redirect_to @chat, notice: "Chat creado con éxito."
    else
      render :new
    end
  end
  def edit
  @chat = Chat.find(params[:id])
end

def update
  @chat = Chat.find(params[:id])
  if @chat.update(chat_params)
    redirect_to chat_path(@chat)
  else
    render :edit
  end
end
  private

  def chat_params
    params.require(:chat).permit(:sender_id, :receiver_id)
  end
end

