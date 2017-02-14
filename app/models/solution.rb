# == Schema Information
#
# Table name: solutions
#
#  id          :integer          not null, primary key
#  body        :string           not null
#  question_id :integer          not null
#  user_id     :integer          not null
#

class Solution < ActiveRecord::Base
  validates :body, :user_id, presence: true

  belongs_to :question
  belongs_to :user
end
