# == Schema Information
#
# Table name: post_reactions
#
#  id         :bigint           not null, primary key
#  user_id    :bigint           not null
#  post_id    :bigint           not null
#  kind       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class PostReaction < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :kind, acceptance: {
    accept: %w[like dislike],
  }

  def self.kinds
    %w[like dislike]
  end
end
