class Question < ApplicationRecord
	has_many :codes
	belongs_to :user
end
