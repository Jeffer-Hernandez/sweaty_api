class DiscussionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :board_id, :board, :user_id, :user
end
