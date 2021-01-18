class StoryIdeasController < ApplicationController

    def index 
        story_ideas = StoryIdea.all.reverse_order
        render json: StoryIdeaSerializer.new(story_ideas)
    end

    def show 
        story_idea = StoryIdea.find_by(id: params[:id])
        render json: StoryIdeaSerializer.new(story_idea)
    end

    def create
        story_idea = StoryIdea.new(story_idea_params)
        story_idea.save

        if story_idea.save
            render json: StoryIdeaSerializer.new(story_idea)
        else
            render json: { error: 'Your story could not be saved' }
        end
    end

    def update
        story_idea = StoryIdea.find_by(id: params[:id])

        if story_idea.update(story_idea_params)
            render json: StoryIdeaSerializer.new(story_idea)
        else
            render json: { error: 'Unable to update your story' }
        end
    end

    def destroy
        story_idea = StoryIdea.find_by(id: params[:id])
        story_idea.delete

        if story_idea.delete
            render json: { id: params[:id] }
        else
            render json: { error: "Story could not be delete" }
        end
    end

    private

    def story_idea_params
        params.require(:story_idea).permit(:name, :setting, :plot, :conflict, :theme, :pov, :tone, :style, :user_id)
    end

end
