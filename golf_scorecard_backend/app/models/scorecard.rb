class Scorecard < ApplicationRecord
    belongs_to :course
    belongs_to :tee

    def as_json(options = {})
    super(options.merge(include: { tee: { only: [:name, :yardage] } }))
  end
end
  