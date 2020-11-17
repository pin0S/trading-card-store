module ApplicationHelper
    def get_unread_messages(current_user)
        conversations = Conversation.where(sender: current_user) + Conversation.where(recipient: current_user)
        unread_messages = Message.where("user_id != ? AND read = ?", current_user.id, false).where(conversation_id: [conversations]).count

    end
end
