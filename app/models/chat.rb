class Chat < ApplicationRecord
  belongs_to :sender,  class_name: "User"
  belongs_to :receiver, class_name: "User"
  has_many   :messages
  scope :for_user, ->(user) {
    where("sender_id = :id OR receiver_id = :id", id: user.id)
  }

  def other_participant(user)
    user.id == sender_id ? receiver : sender
  end
end

  