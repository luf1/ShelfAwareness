# Project name: ShelfAwareness
# # Description: Aims to improve/facilitate literacy through social media and donations of books
# # Filename: donor.rb
# # Description: All field are required for a donor to donate
# # Last modified on: 4/25/2019
# # License: This code was adpated from https://guides.rubyonrails.org/getting_started.html#the-first-form under the Creative Commons Attribution-ShareAlike 4.0 International License

class Donor < ApplicationRecord
  validates :name, presence: true,
                   length: { minimum: 1 }
  validates :message, presence: true,
                      length: { minimum: 5 }

end
