class Instructor < ApplicationRecord
    #validates :email, presence: true, uniqueness: true
    #validates :username, presence: true, uniqueness:true
    #validates :name, presence: true
    #validates :background, presence: true 
    #validates password, :presence: true

    has_many :fitness_classes
    has_many :members, through: :fitness_classes

    has_secure_password
    
end
