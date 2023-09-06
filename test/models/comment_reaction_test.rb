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
require "test_helper"

class CommentReactionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
