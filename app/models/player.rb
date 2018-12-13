class Player < ApplicationRecord
	validates :first_name, :surname, presence: true
end
