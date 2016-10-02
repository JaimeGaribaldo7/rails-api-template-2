class Team < ActiveRecord::Base
  has_many :pokemons, through: :draftings
  has_many :draftings, dependent: :destroy

  # , inverse_of: :team
  # NOTE not sure about this ^^^ or ^^^
end
