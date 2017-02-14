# == Schema Information
#
# Table name: questions
#
#  id          :integer          not null, primary key
#  body        :string           not null
#  prize_money :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

class Question < ActiveRecord::Base
  validates :prize_money, :body, :user_id, presence: true

  has_many :solutions
  belongs_to :user
end
