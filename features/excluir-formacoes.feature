#language: pt
  Funcionalidade: Exluir formação
    Eu, como instrutor
    Quero poder excluir ua formação
    Para poder organizar minha lista de formações

  @e2e
  Cenário: criar formação
    Dado estou em "/login"
    E preencho "email" com "franklyn@teste.com.br"
    E preencho "senha" com "123456"
    E pressiono "Fazer Login"
    E sigo o link "Formações"
    E sigo o link "Nova Formação"
    E preencho "descricao" com "PHP na Web"
    Quando pressiono "Salvar"
    Então devo ver "Formação cadastrada com sucesso"

  @e2e
  Cenário: Excluir formação existente
    Dado estou em "/login"
    E preencho "email" com "franklyn@teste.com.br"
    E preencho "senha" com "123456"
    E pressiono "Fazer Login"
    E sigo o link "Formações"
    Quando sigo o link "Excluir"
    Então devo ver "Formação excluída com sucesso"

