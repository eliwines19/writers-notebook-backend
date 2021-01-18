class CommentsController < ApplicationController

    def index
        comments = Comment.all
        render json: CommentSerializer.new(comments)
    end

    def show
        comment = Comment.find_by(id: params[:id])
        render json: CommentSerializer.new(comment)
    end

    def create
        comment = Comment.create(comment_params)

        if comment.save
            render json: CommentSerializer.new(comment)
        else
            render json: { error: "Comment could not be created" }
        end
    end

    def destroy
        id = params[:id].to_i
        comment = Comment.find_by(id: id)
        comment.delete

        render json: { id: id }
    end

    private

    def comment_params
        params.require(:comment).permit(:text, :user_id, :story_idea_id)
    end

end
