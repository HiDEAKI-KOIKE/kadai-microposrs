class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum:255 }
  
  #ここから1対多の記述
  has_many :favorites, dependent: :destroy
  has_many :favoriters, through: :favorites, source: :user
end
