local senha = "GRATIS"

function verificarSenha()
    local entradaSenha = gg.prompt({"Digite a senha para usar a script:"}, nil, {"text"})
    if entradaSenha == nil or entradaSenha[1] ~= senha then
        gg.alert("❌ Senha incorreta. Você não e o dono dessa script. ❌")
        os.exit()
    end
end

gg.alert('🦊 sᴄʀɪᴘᴛ ᴡɪʟᴅᴄʀᴀғᴛ 🦊')

verificarSenha()

gg.clearResults() 
function START()
    menu = gg.choice({'☯ ɪᴍᴏʀᴛᴀʟ ᴘᴠᴇ','🔒 ☯ ɪᴍᴏʀᴛᴀʟ + ʙᴏᴏsᴛᴇʀ ɪɴғ','🔒 ☯ ᴡᴀʟʟʜᴀᴄᴋ','☯ sᴘᴇᴇᴅ','☯ ᴛᴇᴍᴘᴏ','🔒 ☯ ᴍᴜɴᴅᴏ ʀɢʙ','🔒 ☯ ᴀᴛᴛᴀᴄᴋ (ᴍᴏʙs)','🔒 ☯ ɪɴᴠᴀᴅɪʀ sᴇʀᴠᴇʀ','🔒 ☯ ᴀᴛᴛᴀᴄᴋ (ᴘᴇᴛ)','🔒 ☯ ᴠᴏᴀʀ','🔒 ☯ sᴜᴘᴇʀ ᴘᴜʟᴏ','sᴀɪʀ','ᴅᴇsᴄʀɪᴄ̧ᴀ̃ᴏ'}, nil, 'Script online criado por zV1ct0r.')
    if menu == 1 then imortal_pve()
    elseif menu == 2 then imortal_pvp()
    elseif menu == 3 then wallhack()
    elseif menu == 4 then speed()
    elseif menu == 5 then tempo()
    elseif menu == 6 then mundo()
    elseif menu == 7 then attack_mob()
    elseif menu == 8 then invade()
    elseif menu == 9 then attack_pet()
    elseif menu == 10 then fly()
    elseif menu == 11 then super_pulo()
    elseif menu == 12 then sair()
    elseif menu == 13 then description()
    elseif menu == nil then gg.hideUiButton()
    end
end

function imortal_pve()
	menu = gg.choice({'ᴏɴ','ᴏғғ','ᴠᴏʟᴛᴀʀ'}, nil, 'Essa função funciona somente contra Mobs')
	if menu == 1 then imortal_pve_on()
	elseif menu == 2 then imortal_pve_off()
	elseif menu == 3 then START()
	end
end

function imortal_pvp()
	gg.alert('🔒Opção bloqueada pelo admin🔒')
	START()
end
	
function wallhack()
	gg.alert('🔒Opção bloqueada pelo admin🔒')
	START()
end

function speed()
	menu = gg.choice({'ɴᴏʀᴍᴀʟ','ᴍᴇᴅɪᴏ','ᴀʟᴛᴏ','ᴜʟᴛʀᴀ','ᴠᴏʟᴛᴀʀ'}, nil, 'Você precisa estar andando pra ir rápido')
	if menu == 1 then speed_normal()
	elseif menu == 2 then speed_medio()
	elseif menu == 3 then speed_alto()
	elseif menu == 4 then speed_ultra()
	elseif menu == 5 then START()
	end
end

function tempo()
	menu = gg.choice({'ᴅɪᴀ','ɴᴏɪᴛᴇ','ᴠᴏʟᴛᴀʀ'})
	if menu ==1 then dia()
	elseif menu == 2 then noite()
	elseif menu == 3 then START()
	end
end

function mundo()
	gg.alert('🔒Opção bloqueada pelo admin🔒')
	START()
end

function attack_mob()
	gg.alert('🔒Opção bloqueada pelo admin🔒')
	START()
end

function invade()
	gg.alert('🔒Opção bloqueada pelo admin🔒')
	START()
end

function attack_pet()
	gg.alert('🔒Opção bloqueada pelo admin🔒')
	START()
end

function fly()
	gg.alert('🔒Opção bloqueada pelo admin🔒')
	START()
end

function super_pulo()
	gg.alert('🔒Opção bloqueada pelo admin🔒')
	START()
end

-- Executar códigos 

function imortal_pve_on()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.searchNumber('2.40000009537',gg.TYPE_FLOAT)
	gg.refineAddress("F0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1, 0)
	local R = gg.getResults(20)
	for i,v in pairs(R) do
		R[i].address = R[i].address + 0x120
		R[i].flags = gg.TYPE_FLOAT
		R[i].value = -999
		R[i].freeze = true
	end
	gg.addListItems(R)
	gg.getListItems()
	gg.clearResults()
	gg.clearList()
	ativado()
end

function imortal_pve_off()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.searchNumber('2.40000009537',gg.TYPE_FLOAT)
	gg.refineAddress("F0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1, 0)
	local R = gg.getResults(20)
	for i,v in pairs(R) do
		R[i].address = R[i].address + 0x120
		R[i].flags = gg.TYPE_FLOAT
		R[i].value = 1
		R[i].freeze = true
	end
	gg.addListItems(R)
	gg.getListItems()
	gg.clearResults()
	gg.clearList()
	desativado()
end

function speed_normal()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.searchNumber('10.0;8.75:321',gg.TYPE_FLOAT)
	gg.refineNumber('8.75',gg.TYPE_FLOAT)
	gg.refineAddress('0', -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1, 0)
	local R = gg.getResults(100)
	for i,v in pairs(R) do
		R[i].address = R[i].address - 0x1D0
		R[i].flags = gg.TYPE_FLOAT
		R[i].value = 1
		R[i].freeze = true
	end
	gg.addListItems(R)
	gg.getListItems()
	gg.clearResults()
	gg.clearList()
	desativado()
end

function speed_medio()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.searchNumber('10.0;8.75:321',gg.TYPE_FLOAT)
	gg.refineNumber('8.75',gg.TYPE_FLOAT)
	gg.refineAddress('0', -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1, 0)
	local R = gg.getResults(100)
	for i,v in pairs(R) do
		R[i].address = R[i].address - 0x1D0
		R[i].flags = gg.TYPE_FLOAT
		R[i].value = 10
		R[i].freeze = true
	end
	gg.addListItems(R)
	gg.getListItems()
	gg.clearResults()
	gg.clearList()
	ativado()
end

function speed_alto()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.searchNumber('10.0;8.75:321',gg.TYPE_FLOAT)
	gg.refineNumber('8.75',gg.TYPE_FLOAT)
	gg.refineAddress('0', -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1, 0)
	local R = gg.getResults(100)
	for i,v in pairs(R) do
		R[i].address = R[i].address - 0x1D0
		R[i].flags = gg.TYPE_FLOAT
		R[i].value = 50
		R[i].freeze = true
	end
	gg.addListItems(R)
	gg.getListItems()
	gg.clearResults()
	gg.clearList()
	ativado()
end

function speed_ultra()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.searchNumber('10.0;8.75:321',gg.TYPE_FLOAT)
	gg.refineNumber('8.75',gg.TYPE_FLOAT)
	gg.refineAddress('0', -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1, 0)
	local R = gg.getResults(100)
	for i,v in pairs(R) do
		R[i].address = R[i].address - 0x1D0
		R[i].flags = gg.TYPE_FLOAT
		R[i].value = 300
		R[i].freeze = true
	end
	gg.addListItems(R)
	gg.getListItems()
	gg.clearResults()
	gg.clearList()
	ativado()
end

function dia()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.searchNumber('100F;6F:497')
	gg.refineNumber('100',gg.TYPE_FLOAT)
	gg.refineAddress('B0', -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1, 0)
	local R = gg.getResults(100)
	for i,v in pairs(R) do
		R[i].address = R[i].address + 0x180
		R[i].flags = gg.TYPE_FLOAT
		R[i].value = 0
		R[i].freeze = true
	end
	gg.addListItems(R)
	gg.getListItems()
	gg.clearResults()
	gg.clearList()
	gg.toast('Dia [🌄]')
end

function noite()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.searchNumber('100F;6F:497')
	gg.refineNumber('100',gg.TYPE_FLOAT)
	gg.refineAddress('B0', -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1, 0)
	local R = gg.getResults(100)
	for i,v in pairs(R) do
		R[i].address = R[i].address + 0x180
		R[i].flags = gg.TYPE_FLOAT
		R[i].value = 9999
		R[i].freeze = true
	end
	gg.addListItems(R)
	gg.getListItems()
	gg.clearResults()
	gg.clearList()
	gg.toast('Noite [🌠]')
end

function ativado()
	gg.toast('Ativado [🟢]')
end

function desativado()
	gg.toast('Desativado [🔴]')
end

function sair()
	menu = gg.choice({'sᴀɪʀ ᴍᴇsᴍᴏ ᴀssɪᴍ','ғᴇᴄʜᴀʀ ᴍᴇɴᴜ','ᴠᴏʟᴛᴀʀ'}, nil, 'Se você sair você precisará colocar senha novamente para entrar no script') 
	if menu == 1 then os.exit()
	elseif menu == 2 then gg.hideUiButton()
	elseif menu == 3 then START()
	end
end

function description()
	gg.alert('Script - Versão Grátis (Teste). Disponível por 7 dias! Instagram: @v1ct0r_w.c. ⚠️ Aviso: Esta versão gratuita é um teste para verificar a compatibilidade com diferentes dispositivos. Ela pode não funcionar corretamente em alguns aparelhos.')
	START()
end

while true do
	if gg.isVisible (false) then
		gg.setVisible(false)
		START()
	end
end
