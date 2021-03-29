class Post < ApplicationRecord
  belongs_to :user

  validates :text, :content, :party_time, presence: true
end
