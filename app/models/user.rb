class User < ApplicationRecord
    has_secure_password

    has_many :story_ideas
    has_many :characters
    has_many :comments, through: :story_ideas
end
