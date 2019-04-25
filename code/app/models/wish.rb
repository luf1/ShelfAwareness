# Project name: ShelfAwareness
# # Description: Aims to improve/facilitate literacy through social media and donations of books
# # Filename: wish.rb
# # Description: all field are required to make a wish
# # Last modified on: 4/25/2019
# # License: This code was adpated from https://guides.rubyonrails.org/getting_started.html#the-first-form under the Creative Commons Attribution-ShareAlike 4.0 International License

class Wish < ApplicationRecord
  validates :title, presence: true,
                    length: { minimum: 1 }
  validates :author, presence: true,
                     length: { minimum: 1 }
  validates :details, presence: true,
                     length: { minimum: 10 }
end
