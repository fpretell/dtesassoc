class Invoice < ApplicationRecord
	belongs_to :company
	has_many :items
end
