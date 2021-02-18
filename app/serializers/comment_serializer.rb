class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :user_id, :user, :discussion_id, :discussion
end
