# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
t = Team.create!(title: "Engineering")
u = User.create!(name: "sam", password_digest: "sam", email: "sam@sam.sam", team: t)
p = Project.create!(title: "m-gauge-api", team: t)
task = Task.create!(title: "write migrations", user: u, project: p)