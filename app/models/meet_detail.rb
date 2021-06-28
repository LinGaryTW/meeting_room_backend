class MeetDetail < ApplicationRecord
  belongs_to :meet
  has_many :users
end
