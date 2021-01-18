class StoryIdeaSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :setting, :plot, :conflict, :theme, :pov, :tone, :style, :user_id, :user, :characters, :comments, :created_at, :updated_at
end
