class Article < ApplicationRecord
	belongs_to :user, optional: true
	belongs_to :categorie, optional: true
	has_many :commentaires
	has_many :likes
end
