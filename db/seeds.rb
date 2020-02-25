# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Champion.destroy_all


alan = User.create(:username => "Alan", :rank => "Challenger")
yo = User.create(:username => "Yo", :rank => "Iron IV")

mf = Champion.create(:name => "Miss Fortune", :description => "Pirate", :role => "ADC")
tf = Champion.create(:name => "Twisted Fate", :description => "Sneaky Magician", :role => "Mid")
teemo = Champion.create(:name => "Teemo", :description => "Annoying lil yordle", :role => "Top")

champ_owned1 = ChampionOwned.create(:user_id => yo.id, :champion_id => teemo.id)