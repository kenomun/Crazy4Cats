# == Schema Information
#
# Table name: comments
#
#  id         :bigint           not null, primary key
#  content    :text
#  user_id    :bigint
#  post_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Comment < ApplicationRecord
  #Relaciones
  belongs_to :user , optional: true
  belongs_to :post
  has_many :comment_reactions, dependent: :destroy
  has_many :comments, through: :comment_reactions

  #Validaciones
  validates :content, presence: true

end
