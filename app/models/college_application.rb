class CollegeApplication < ApplicationRecord
    has_many :plans, dependent: :destroy
    
end
