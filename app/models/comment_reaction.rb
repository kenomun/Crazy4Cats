# == Schema Information
#
# Table name: comment_reactions
#
#  id         :bigint           not null, primary key
#  user_id    :bigint           not null
#  comment_id :bigint           not null
#  kind       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class CommentReaction < ApplicationRecord
  belongs_to :user
  belongs_to :comment

  validates :kind, acceptance: {
    accept: %w[like dislike],
  }

  def self.kinds
    %w[like dislike]
  end
end
