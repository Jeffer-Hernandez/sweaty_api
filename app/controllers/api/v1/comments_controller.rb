class Api::V1::CommentsController < ApplicationController

    def index
        comments = Comment.all
        render json: CommentSerializer.new(comments)
    end

    def create
        comment = Comment.new(comment_params)
  
        if comment.save
            render json: CommentSerializer.new(comment), status: :accepted
        else
            render json: {errors: discussion.errors.full_messages}, status: :unprocessable_entity
        end
    end

    private

    def comment_params
        params.require(:comment).permit(:content, :user_id, :discussion_id)
    end

    
end
