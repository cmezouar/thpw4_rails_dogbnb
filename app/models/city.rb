class City < ApplicationRecord
    has_many :dogs
    has_many :dog_sitter
    has_many :strolls 
end
