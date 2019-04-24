class Wish < ApplicationRecord
  validates :title, presence: true,
                    length: { minimum: 1 }
  validates :author, presence: true,
                     length: { minimum: 1 }
  validates :details, presence: true,
                     length: { minimum: 10 }
end
