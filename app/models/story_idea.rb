class StoryIdea < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :characters
end
