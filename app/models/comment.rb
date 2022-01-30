class Comment < ApplicationRecord
  # association to article model
  belongs_to :article
end
