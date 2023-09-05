# == Schema Information
#
# Table name: reactions
#
#  id         :bigint           not null, primary key
#  kind       :string
#  user_id    :bigint
#  post_id    :bigint           not null
#  comment_id :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class ReactionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
