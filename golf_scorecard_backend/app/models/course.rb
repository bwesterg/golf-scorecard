class Course < ApplicationRecord
    has_many :tees
    has_many :scorecards
end
