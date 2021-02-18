class Api::V1::BoardsController < ApplicationController

    def index
        boards = Board.all
        render json: BoardSerializer.new(boards)
    end


end
