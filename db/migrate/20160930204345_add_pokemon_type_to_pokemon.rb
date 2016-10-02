class AddPokemonTypeToPokemon < ActiveRecord::Migration
  def change
    add_column :pokemons, :pokemontype, :string
  end
end
