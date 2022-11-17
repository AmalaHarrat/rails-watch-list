class Movie < ApplicationRecord
  has_many :bookmarks

  validates :title, :overview, uniqueness: true
  validates :title, presence: true
  validates :overview, presence: true

end
