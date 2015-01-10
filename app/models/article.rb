class Article < ActiveRecord::Base
  # validations
  # validates :user_id, presence: true
  validates :title, presence: true, length: { minimum: 5 }
  validates :content, presence: true, length: { maximum: 140 }
  
  # associations
  belongs_to :user
end
