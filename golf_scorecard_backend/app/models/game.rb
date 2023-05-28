class Game < ApplicationRecord
  has_many :people
  has_one :course
end
