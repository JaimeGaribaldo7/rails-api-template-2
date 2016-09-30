class Team < ActiveRecord::Base
  has_many :pokemons # , inverse_of: :team
  # NOTE not sure about this ^^^ or ^^^
end
