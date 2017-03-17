Given(/^Que eu envie um GET para a API films$/) do
  @response = HTTParty.get('http://swapi.co/api/films/')
end

When(/^Exibir o conteudo do campo title da estrutura result$/) do
  @i = @response["count"]-1 
  @results = @response["results"]   
  
  for i in 0..@i 
    puts @results[i]["title"]   
  end
  
  
  
end

Then(/^Recebe o statuscode da resposta da requisicao$/) do  
  case @response.code
    when 200
      puts "Status: API funcionando corretamente."
    when 404
      puts "Status: API não encontrada."
    when 500...600
      puts "Status: Falha #{response.code}"   
  end
end