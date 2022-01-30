class Article < ApplicationRecord
  # Active Record automatically defines model attributes for every table column, 
  # so you don't have to declare those attributes in your model file.
  # validates is inherited 
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
