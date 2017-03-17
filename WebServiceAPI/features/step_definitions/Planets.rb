Given(/^Que eu envie um GET para a API planets$/) do
  @response_planet = HTTParty.get('http://swapi.co/api/planets/')  
end

When(/^Armazeno o valor do campo count$/) do  
  @contagem = (@response_planet["count"] + rand(100)).to_s    
end

When(/^Envio um novo GET passando um valor aleatorio superior ao armazenado$/) do
  @response = HTTParty.get('http://swapi.co/api/planets/'+@contagem+'/')
end

Then(/^Recebe o statuscode e uma mensagem$/) do
  case @response.code
    when 200
      puts "API funcionando corretamente."
    when 404
      puts "API não encontrada."
    when 500...600
      puts "Falha #{response.code}"   
  end
  
  puts 'Message: ' + @response.message
end