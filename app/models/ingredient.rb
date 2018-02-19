class Ingredient < ApplicationRecord
	has_many :doses
	# has_many :cocktails, through: :doses, dependent: :restrict_with_error
	validates :name, presence: true, uniqueness: true

	private

	# def check_for_children
	# 	if xx
	# 	end
	# end
end
