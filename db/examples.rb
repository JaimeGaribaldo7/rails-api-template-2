# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# %w(antony jeff matt jason).each do |name|
#   email = "#{name}@#{name}.com"
#   next if User.exists? email: email
#   User.create!(email: email,
#                password: 'abc123',
#                password_confirmation: nil)
# end

Pokemon.create([
                 { name: 'Bulbasaur',
                   number: '01',
                   pokemontype: 'Grass/Poison' },
                 { name: 'Ivysuar',
                   number: '02',
                   pokemontype: 'Grass/Poison' },
                 { name: 'Venusaur',
                   number: '03',
                   pokemontype: 'Grass/Poison' },
                 { name: 'Charmander',
                   number: '04',
                   pokemontype: 'Fire' },
                 { name: 'Charmeleon',
                   number: '05',
                   pokemontype: 'Fire' },
                 { name: 'Charizard',
                   number: '06',
                   pokemontype: 'Fire/Flying' },
                 { name: 'Squirtle',
                   number: '07',
                   pokemontype: 'Water' },
                 { name: 'Wartortle',
                   number: '08',
                   pokemontype: 'Water' },
                 { name: 'Blastoise',
                   number: '09',
                   pokemontype: 'Water' }
               ])
