class Ability
  include CanCan::Ability

  def initialize(user)
    # Si no hay usuario logueado, no puede hacer nada (o solo leer lo público)
    return unless user

    # Permitir leer todo (para cualquier usuario logueado)
    can :read, Chat do |chat|
      chat.sender_id   == user.id ||
      chat.receiver_id == user.id
    end
    can :read, User, id: user.id

    # Mensajes
    # Cualquier usuario puede crear mensajes
    can :create, Message

    # Solo el dueño (usuario que creó el mensaje) puede actualizar o eliminar su mensaje
    can [:update, :destroy], Message, user_id: user.id

    # Chats
    # Cualquier usuario puede crear un chat
    can :create, Chat

    # Solo el sender o receiver puede actualizar o eliminar un chat
    can [:update, :destroy], Chat do |chat|
      chat.sender_id == user.id || chat.receiver_id == user.id
    end

    # Puedes agregar otras reglas según necesites
  end
end
