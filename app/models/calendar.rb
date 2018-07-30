class Calendar < ApplicationRecord
  enum status: [:Avalaible, :Not_Available]

  validates :day, presence: true
  belongs_to :room

end
