class Tag < ApplicationRecord
	has_many :taggings
    has_many :paints, through: :taggings
    belongs_to :paints
end
