class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :text, :story_idea, :user_id, :story_idea_id, :created_at, :updated_at, :user
end
