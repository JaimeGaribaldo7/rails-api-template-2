class PokemonSerializer < ActiveModel::Serializer
  attributes :id, :number, :name, :type
end
