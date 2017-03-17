Feature: Teste de WebService e API

@Films
Scenario: Testar a API films
	Given Que eu envie um GET para a API films
	When  Exibir o conteudo do campo title da estrutura result
	Then  Recebe o statuscode da resposta da requisicao  


@Planets
Scenario: Testar a API films
	Given Que eu envie um GET para a API planets
	When  Armazeno o valor do campo count
	 And  Envio um novo GET passando um valor aleatorio superior ao armazenado
	Then  Recebe o statuscode e uma mensagem  
