# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'CSV'
Pokemon.transaction do
  CSV.foreach(Rails.root + 'data/pokemon.csv', headers: true) do |row|
    pokemon = row.to_hash
    pokemon.each do |hs|
      Pokemon.create(id: hs[:id], name: hs[:name], number: hs[:number].to_s, pokemontype: hs[:pokemontype])
    end
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
