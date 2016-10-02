class PokemonSerializer < ActiveModel::Serializer
  attributes :id, :number, :name, :pokemontype, :teams, :draftings
  # has_many :teams????
end
