class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :user_id, :user, :discussion_id, :discussion
  belongs_to :user
  belongs_to :discussion
end
