class Post < ApplicationRecord
  #rRelaciones
  belongs_to :user
  has_one_attached :image

  #Validaciones
  validates :title, presence: true
  validates :content, presence: true
end
