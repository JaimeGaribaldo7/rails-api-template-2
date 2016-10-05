# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'
Pokemon.transaction do
  CSV.foreach('data/pokemon.csv', headers: true, header_converters: -> (h) { h.downcase.to_sym }) do |pokemon|
    p pokemon
    Pokemon.create(id: pokemon[:id], name: pokemon[:name], number: pokemon[:number].to_s, pokemontype: pokemon[:pokemontype])
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
