class Pokemon < ActiveRecord::Base
  has_many :teams # , inverse_of: :team
  # NOTE not sure about this ^^^ or ^^^
end
