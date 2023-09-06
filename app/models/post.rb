# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  title      :string
#  content    :text
#  user_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Post < ApplicationRecord
  #rRelaciones
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :post_reactions, dependent: :destroy
  has_many :posts, through: :post_reactions
  has_one_attached :image


  #Validaciones
  validates :title, presence: true
  validates :content, presence: true
end
