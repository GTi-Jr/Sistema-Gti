# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Role.create(name:"Diretor de Projetos",role_type: 1)
Role.create(name:"Diretor de Talentos",role_type: 1)
Role.create(name:"Diretor de Marketing",role_type: 1)
Role.create(name:"Diretor Presidente",role_type: 1)
Role.create(name:"Diretor Administratio Financeiro",role_type: 1)
Role.create(name:"Desenvolvedor",role_type: 1)
Role.create(name:"Trainee",role_type: 1)
Member.create(name: "Lucas Simão",email:"lucas64_64@hotmail.com", password: '12346578' ,encrypted_password: "$2a$11$LU5oCztZ.I3CAXNCYU1Y4OLdTM/JIiVcbX1sH46qmZ47SxOGp1iKu",picture:"/simao.jpg",role: Role.find_by(name: "Diretor de Projetos"))
Advertisement.create!(date:"18-03-1996", reason: "Não completou a atividade", member: Member.find_by(name: "Lucas Simão"))
Advertisement.create!(date:"18-03-1996", reason: "Faltou Reunião", member: Member.find_by(name: "Lucas Simão"))
