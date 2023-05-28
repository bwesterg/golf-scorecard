class Course < ApplicationRecord
  has_many :holes

  def as_json(options = {})
    super(options.merge(include: :holes))
  end
end
