class AddNumberToPokemon < ActiveRecord::Migration
  def change
    add_column :pokemons, :number, :int
  end
end
