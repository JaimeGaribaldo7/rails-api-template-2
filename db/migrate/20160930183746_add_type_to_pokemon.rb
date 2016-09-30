class AddTypeToPokemon < ActiveRecord::Migration
  def change
    add_column :pokemons, :type, :string
  end
end
