class DiscussionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :board_id, :board, :user_id, :user
  has_many :comments
end
