class Api::V1::CommentsController < ApplicationController

    def index
        comments = Comment.all
        render json: CommentSerializer.new(comments)
    end

    def create
        comment = Comment.new

        if comment.save
            render json: comment, status: :accepted
        else
            render json: {errors: discussion.errors.full_messages}, status: :unproce
        end
    end

    private

    def comments_params
        params.require(comments).permit(:content, :user_id, :discussion_id)
    end

    
end
