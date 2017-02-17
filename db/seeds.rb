# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Member.create!(name: "Lucas Simão",email:"lucas64_64@hotmail.com", password: '12346578' ,encrypted_password: "$2a$11$LU5oCztZ.I3CAXNCYU1Y4OLdTM/JIiVcbX1sH46qmZ47SxOGp1iKu",picture:"/simao.jpg",role:"Diretor de Projetos")
