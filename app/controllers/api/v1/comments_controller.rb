class Api::V1::CommentsController < ApplicationController

    def index
        comments = Comment.all
        render json: comments
    end

    def create
        comment = Comment.new

        if comment.save
            render json: comment, status: :accepted
        else
            render json: {errors: discussion.errors.full_messages}, status: :unproce
        end
    end

    def update
    end

    def destroy
    end

    private

    def comments_params
        params.require(comments).permit(:content, :user_id, :discussion_id)
    end

    
end
