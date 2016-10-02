class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :teams
  has_many :pokemons
end
