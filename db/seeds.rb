# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'CSV'
Pokemon.transaction do
  CSV.foreach(Rails.root + 'data/pokemon.csv', headers: true, header_converters: -> (h) { h.downcase.to_sym }) do |pokemon|
    p pokemon
    @pokemons << Pokemon.new(pokemon.to_hash)
    Pokemon.create(id: hs[:id], name: hs[:name], number: hs[:number].to_s, pokemontype: hs[:pokemontype])
  end
end

#   unless Rails.env == 'production'
#     desc 'Drop and setup the development database with examples'
#     task nuke_pave:
#     %w(environment db:drop db:create db:migrate db:seed db:examples
# db:pokemons) do
#       puts "Nuke and pave of #{Rails.env} complete."
#     end
#   end
