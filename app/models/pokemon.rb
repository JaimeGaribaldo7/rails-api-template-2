class Pokemon < ActiveRecord::Base
  has_many :teams, through: :draftings
  has_many :draftings, dependent: :destroy # , inverse_of: :team
  # NOTE not sure about this ^^^ or ^^^
end
