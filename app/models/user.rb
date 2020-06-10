class User < ApplicationRecord
	has_many :books
	has_many :posts
	has_many :items, dependent: :destroy

end
