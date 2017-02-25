# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Role.create!(name:"Diretor de Projetos",role_type: 1)
Role.create(name:"Diretor de Talentos",role_type: 1)
Role.create(name:"Diretor de Marketing",role_type: 1)
Role.create(name:"Diretor Presidente",role_type: 1)
Role.create(name:"Diretor Administratio Financeiro",role_type: 1)
Role.create(name:"Desenvolvedor",role_type: 2)
Role.create(name:"Trainee",role_type: 3)

Member.create!(name: "Lucas Simão",email:"lucas64_64@hotmail.com", password: '12346578' ,encrypted_password: "$2a$11$LU5oCztZ.I3CAXNCYU1Y4OLdTM/JIiVcbX1sH46qmZ47SxOGp1iKu",picture:"/simao.jpg",role: Role.find_by(name: "Diretor de Projetos"))
Member.create(name: "Carlos Adolfo",email:"adolfo@hotmail.com", password: '12346578' ,encrypted_password: "$2a$11$LU5oCztZ.I3CAXNCYU1Y4OLdTM/JIiVcbX1sH46qmZ47SxOGp1iKu",picture:"/simao.jpg",role: Role.find_by(name: "Diretor de Talentos"))
Member.create(name: "Gabriel das Neves",email:"gabriel@hotmail.com", password: '12346578' ,encrypted_password: "$2a$11$LU5oCztZ.I3CAXNCYU1Y4OLdTM/JIiVcbX1sH46qmZ47SxOGp1iKu",picture:"/simao.jpg",role: Role.find_by(name: "Diretor Presidente"))
Member.create(name: "Joaozinho da Feira",email:"joaozinho@hotmail.com", password: '12346578' ,encrypted_password: "$2a$11$LU5oCztZ.I3CAXNCYU1Y4OLdTM/JIiVcbX1sH46qmZ47SxOGp1iKu",picture:"/simao.jpg",role: Role.find_by(name: "Desenvolvedor"))



Advertisement.create!(date:"18-03-1996", reason: "Não completou a atividade", member: Member.find_by(name: "Lucas Simão"))
Advertisement.create(date:"18-03-1996", reason: "Faltou Reunião", member: Member.find_by(name: "Lucas Simão"))

Achievement.create!(name: "Hans Solo Shots First", description: "Primeiro a entregar um trabalho/sprint/tarefa", value:30)
Achievement.create(name: "Missão Dada…", description: "Aceitar um aumento de funcionalidade em seu trabalho", value:30)
Achievement.create(name: "… É Missão Cumprida", description: "Finalizar trabalho com funcionalodade extra corretamente no prazo", value:30)
Achievement.create(name: "#somosTodosCaio", description: "Participar de mais da metade das sessões tira-dúvidas/monitorias", value:30)
Achievement.create(name: "Triforce: Sabedoria", description: "Terminar curso de Git", value:30)
Achievement.create(name: "Triforce: Poder", description: "Terminar Desafio Rails", value:30)
Achievement.create(name: "Triforce: Coragem", description: "Terminar Desafio HTML/CSS com ou sem Wordpress", value:30)
Achievement.create(name: "Despertar da Força", description: "Se tornar Membro Efetivo", value:30)
Achievement.create(name: "Action Stations!", description: "Entrar no primeiro projeto", value:30)
Achievement.create(name: "Welcome!", description: "Realizar marketing para a GTi", value:30)
Achievement.create(name: "He He He He! Thank You!", description: "Fechar um projeto que você fez marketing", value:30)
Achievement.create(name: "Got Some Rare Things on Sale, Stranger", description: "Realizar 5 marketings com sucesso", value:30)
Achievement.create(name: "Praticamente Inofensiva", description: "Estar num evento em que a GTi vencer a ADM Soluções", value:30)
Achievement.create(name: "'Não Entre em Pânico'", description: "Segurar a barra da GTi em uma crise financeira e/ou de projetos", value:30)
Achievement.create(name: "Dinamite Pangalática", description: "Participar de um evento do MEJ", value:30)
Achievement.create(name: "Com Grandes Poderes...", description: "Ser eleito para algum cargo", value:30)
Achievement.create(name: "I'll be Back", description: "Lançar candidatura novamente, após não ter conseguido antes", value:30)
Achievement.create(name: "Mandou Bem", description: "Ter seu nome no mural do 'mandou bem'", value:30)
Achievement.create(name: "Eu Sou a Lenda", description: "Se tornar uma lenda por alguma atitude/ação/evento", value:30)
Achievement.create(name: "Hasta la Vista, Baby", description: "Se tornar Ex-membro", value:30)
Achievement.create(name: "The Cake is a Lie", description: "Cliente não gostar de algo desenvolvido e pedir para alterar", value:30)
Achievement.create(name: "I Know Kung Fu", description: "Finalizar seu primeiro curso on-line", value:30)
Achievement.create(name: "Why so Serious?", description: "Organizar um evento de armisticio", value:30)
Achievement.create(name: "Avengers, assemble!!!", description: "Ser gerente de Projetos", value:30)
Achievement.create(name: "I'm in The Empire Business", description: "Ser gerente de Marketing", value:30)

Achievement.create(name: "Mestre da Moeda", description: "Ser gerente de ADM-FIN", value:30)
Achievement.create(name: "Show Me Your Moves!", description: "Ser gerente de Talentos", value:30)
Achievement.create(name: "I am The One Who Knocks", description: "Ser Presidente", value:30)
Achievement.create(name: "Guerra dos Tronos", description: "Participar de uma Eleição", value:30)

Achievement.create(name: "Bando de Burguês Safado!", description: "Vender um projeto por um preço mais alto que o mínimo disponível pela empresa", value:30)
Achievement.create(name: "Você sem fronteiras", description: "Negociar com clientes de fora do estado", value:30)
Achievement.create(name: "Eu vim ver o macaco", description: "Visitar uma empresa concorrente", value:30)
Achievement.create(name: "Mais de 8 mil!", description: "Ultrapassar 8000 pontos", value:30)
