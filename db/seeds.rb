# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'CSV'
namespace :db do
  desc 'Load example data from db/examples.rb'
  task examples: :environment do
    require_relative '../../db/examples'
  end

  desc 'Fill the pokemons table with pokemons data'
  task pokemons: :environment do
    Pokemon.transaction do
      CSV.foreach(Rails.root + 'data/pokemon.csv',
                  headers: true) do |row|
        pokemon = row.to_hash
        next if Pokemon.exists? pokemon
        Pokemon.create!(pokemon)
      end
    end
  end

  unless Rails.env == 'production'
    desc 'Drop and setup the development database with examples'
    task nuke_pave:
    %w(environment db:drop db:create db:migrate db:seed db:examples db:pokemons) do
      puts "Nuke and pave of #{Rails.env} complete."
    end
  end
end
