class FitnessClass < ApplicationRecord
    #validates :name, presence :true
    #validates :datetime, presence :true
    
    belongs_to :instructor
    belongs_to :member
end
