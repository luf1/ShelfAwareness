class Donor < ApplicationRecord
  validates :name, presence: true,
                   length: { minimum: 1 }
  validates :message, presence: true,
                      length: { minimum: 5 }

end
