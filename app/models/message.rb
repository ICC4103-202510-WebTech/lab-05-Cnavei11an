class Message < ApplicationRecord
  belongs_to :chat
  belongs_to :user

  validates :body, presence: true
  validate :user_belongs_to_chat

  private

  def user_belongs_to_chat
    return unless chat && user
    unless [chat.sender_id, chat.receiver_id].include?(user.id)
      errors.add(:base, "El autor debe ser uno de los participantes del chat")
    end
  end
end


