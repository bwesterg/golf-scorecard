class Tee < ApplicationRecord
    belongs_to :course
    has_many :scorecards, dependent: :destroy
end
