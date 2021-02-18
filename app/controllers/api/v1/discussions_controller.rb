class Api::V1::DiscussionsController < ApplicationController

    def index
        discussion = Discussion.all
        render json: DiscussionSerializer.new(discussion)
    end

    def create
        discussion = Discussion.new(discussion_params)

        if discussion.save
            render json: discussion, status: :accepted
        else
            render json: {errors: discussion.errors.full_messages}, status: :unprocessable_entity
        end
        
    end

    private

    def discussion_params
        params.require(:discussion).permit(:title, :user_id, :board_id)
    end

end
