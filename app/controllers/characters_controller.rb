class CharactersController < ApplicationController
    
    def index 
        characters = Character.all
        render json: CharacterSerializer.new(characters)
    end

    def show
        character = Character.find_by(id: params[:id])
        render json: CharacterSerializer.new(character)
    end

    def create
        character = Character.create(character_params)

        if character.save
            render json: CharacterSerializer.new(character)
        else
            render json: { error: "character could not be saved" }
        end
    end

    def update
        id = params[:id].to_i
        character = Character.find_by(id: id)
        character.update(character_params)
        render json: CharacterSerializer.new(character)
    end

    def destroy
        character = Character.find_by(id: params[:id])
        character.delete

        if character.delete
            render json: {id: params[:id]}
        else
            render json: { error: "Character could not be deleted" }
        end
    end

    private

    def character_params
        params.require(:character).permit(:name, :biology, :hero, :villain, :description, :user_id, :story_idea_id)
    end
    
end
