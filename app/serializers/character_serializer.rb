class CharacterSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :biology, :hero, :villain, :description, :story_idea, :user_id, :story_idea_id, :user, :created_at, :updated_at
end
