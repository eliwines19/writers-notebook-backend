class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :story_idea
end
