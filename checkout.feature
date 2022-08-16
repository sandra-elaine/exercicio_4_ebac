                        #language: pt

                        Funcionalidade: Tela de Cadastro - Checkout
                        Como cliente da EBAC-SHOP
                        Quero fazer concluir meu cadastro
                        Para finalizar minha compra

                        Contexto:
                        Dado que eu acesse a tela de checkout da EBAC-SHOP

                        Cenário: Cadastro válido, sinalizados por(*)
                        Quando eu preencher todos os campos obrigatórios
                        Então  eu posso finalizar a compra

                        Cenário: Email inválido
                        Quando  eu preencher os campos, principalmente os obrigatórios
                        E se o  endereço de email for inválido
                        Então  deve exibir a mensagem de erro "Email inválido!"

                        Cenário: Cadastro inválido
                        Quando ao preencher um cadastro
                        E se deixar um ou mais campo obrigatório vazio
                        Então  deve exibir a mensagem de alerta "Falta preencher campo(s) obrigatório(s)!"

                        Esquema do Cenário: Cadastros válidos
                        Quando eu digitar o <nome>, o <sobrenome>,o <pais>, o <endereco>, a <cidade>, o <cep>, o <telefone>, o endereço de <email>
                        E se o email for válido
                        Então  eu posso finalizar a compra

                        Exemplos:
                        | nome      | sobrenome | pais     | endereco                                         | cidade      | cep        | telefone     | email                      |
                        | "Cecília" | "Pessoa"  | "Brasil" | "Rua Haroldo Gurgel nº 1, Alto da Conceição"     | "Mossoró"   | "59600390" | "8430000000" | "cecilia@ebac.com.br"      |
                        | "Maria"   | "Paiva"   | "Brasil" | "Avenida Dom Bosco nº 1, Dom Bosco"              | "Ji-Paraná" | "76907730" | "6936657361" | "maria_paiva@ebac.com"     |
                        | "Matheus" | "Alves"   | "Brasil" | "Avenida Pedro Diniz da Costa nº 10, Bela Vista" | "Vilhena"   | "76892098" | "6936959118" | "matheus.alves23@ebac.org" |
