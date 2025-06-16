function v1()

	local quantidade = gg.getResultsCount()
	
	if quantidade == 0 then
	    gg.alert("Nenhum resultado encontrado.")
	    return
	end
	

	local resultados = gg.getResults(quantidade)
	

	function converterResultadosParaTexto(lista)
	    local resultado = ""
	    for i = 1, #lista do
	        local valor = lista[i].value

	        if valor < 0 then
	            valor = 256 + valor
	        end
	
	        if valor >= 0 and valor <= 255 then
	            resultado = resultado .. string.char(valor)
	        else
	            resultado = resultado .. "?"
	        end
	    end
	    return resultado
	end
	
	local texto = converterResultadosParaTexto(resultados)
	local alert = gg.alert("Texto convertido:\n\n" .. texto, "Ok","Copiar tudo")
	if alert == 1 then os.exit() end
	if alert == 2 then gg.copyText(texto) end
end

function v2()
	local quantidade = gg.getResultsCount()
	if quantidade == 0 then
	    gg.alert("Nenhum resultado encontrado.")
	    return
	end
	
	local resultados = gg.getResults(quantidade)
	
	table.sort(resultados, function(a, b)
	    return a.address < b.address
	end)
	
	function converterResultadosParaTexto(lista)
	    local resultado = ""
	    local ultimoChar = ""
	
	    for i = 1, #lista do
	        local valor = lista[i].value
	
	        if valor < 0 then
	            valor = 256 + valor
	        end
	
	        if valor >= 0 and valor <= 255 then
	            local char = string.char(valor)
	            
	            if char:match("[A-Za-z_]") then
	                if char ~= ultimoChar then
	                    resultado = resultado .. char
	                    ultimoChar = char
	                end
	            end
	        end
	    end
	    return resultado
	end
	local texto = converterResultadosParaTexto(resultados)
	local alert = gg.alert("Texto convertido:\n\n" .. texto, "Ok","Copiar tudo")
	if alert == 1 then os.exit() end
	if alert == 2 then gg.copyText(texto) end
end

local menu = gg.choice({"Exibir letras e caracteres"," Exibir apenas letras"}, nil, "Selecione a forma que será exibido")
if menu == 1 then v1() end
if menu == 2 then v2() end
if menu == nil then os.exit() end


