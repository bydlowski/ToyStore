# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
d01 = Toy.create(name: 'Porquinho Rosa', description: 'Dedoche porquinho rosa feito a mão', price: 40.99 , stock: 1, image: '[url]', codigo: 'porquinho01')
d02 = Toy.create(name: 'Ratinho', description: 'Dedoche ratinho branco feito a mão', price: 35.99 , stock: 1, image: '[url]', codigo: 'ratinho01')

