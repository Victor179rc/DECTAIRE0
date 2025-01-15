gg.clearResults ()
gg.alert('[~sᴄʀɪᴘᴛ ᴅʀᴀɢᴏɴ sɪᴍ V1.0~]')
function Menu ()

MP = gg.choice({'☯ sᴛᴀᴛᴜs ʜᴀᴄᴋ♾️','☯ sᴘᴀᴍ ᴀᴛᴛᴀᴄᴋs♦️','☯ ᴄᴏɴᴛʀᴏʟᴀʀ ᴘʟᴀʏᴇʀs👹','☯ ᴍᴀx ʟᴇᴠᴇʟ ʜᴀᴄᴋ','☯ ʜᴀᴄᴋs ɪɴᴜᴛɪʟ','sᴀɪʀ ⭕'}, nil, 'sᴄʀɪᴘᴛ ʙʏ @v1ct0r_w.c')                  

if MP == 1 then -- status
SS = gg.choice({'ᴠɪᴅᴀ ɪɴғ','sᴘᴇᴇᴅ','ᴇɴᴇʀɢɪᴀ','ᴅᴀɴᴏ','ᴀᴛɪᴠᴀʀ ᴛᴜᴅᴏ','ᴠᴏʟᴛᴀʀ'}, nil, '⚠️ᴛʀᴏϙᴜᴇ ᴅᴇ sᴋɪɴ ᴘᴀʀᴀ ᴏs ᴄᴏᴅɪɢᴏs ғᴜɴᴄɪᴏɴᴀʀᴇᴍ⚠️')

--VIDA
if SS == 1 then
NF = gg.choice({'ᴏɴ','ᴏғғ','ᴇᴅɪᴛᴀʀ','ᴠᴏʟᴛᴀʀ'})

if NF == 1 then-- ON
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('10.0F;90.0F:241')
gg.refineNumber('10',gg.TYPE_FLOAT)
gg.toast('IMORTAL♾️[ON]')
end--NF 1
local V = gg.getResults(100)

for i,v in pairs(V) do

V[i].address = V[i].address - 0x40 -- Offset
V[i].flags = gg.TYPE_DWORD -- Tipo de dado 
V[i].value = -8388608 -- Valor a ser alterado 
V[i].freeze = false -- Congelar ou não 

gg.setValues(V)
gg.addListItems(V)
gg.getListItems()
gg.clearResults()
end

if NF == 2 then -- OFF
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('10.0F;90.0F:241')
gg.refineNumber('10',gg.TYPE_FLOAT)
gg.toast('IMORTAL♾️[OFF]')
end--NF 2
local V = gg.getResults(100)

for i,v in pairs(V) do

V[i].address = V[i].address - 0x40 -- Offset
V[i].flags = gg.TYPE_FLOAT -- Tipo de dado 
V[i].value = 100 -- Valor a ser alterado 
V[i].freeze = false -- Congelar ou não 

gg.setValues(V)
gg.addListItems(V)
gg.getListItems()
gg.clearResults()
end

if NF == 3 then -- EDITAR
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('10.0F;90.0F:241')
gg.refineNumber('10',gg.TYPE_FLOAT)
local R = gg.getResults(100)
local valor = gg.prompt({'𝗘𝘀𝗰𝗼𝗹𝗵𝗮 𝗮 𝗾𝘂𝗮𝗻𝘁𝗶𝗱𝗮𝗱𝗲 𝗱𝗲 𝗛𝗣'}, {0}, {' '}) [1]

for i,v in pairs(R) do
R[i].address = R[i].address - 0x40
R[i].flags = gg.TYPE_FLOAT
R[i].value = valor
R[i].freeze = false

gg.setValues(R)
gg.addListItems(R)
gg.getListItems()
gg.clearResults()
end-- Offset
end-- NF 3

if NF == 4 then
Menu ()
end-- NF 4
end--SS 1




--SPEED
if SS == 2 then
SPD = gg.choice({'ᴏɴ','ᴇᴅɪᴛᴀʀ'})
if SPD == 1 then
gg.searchNumber('10F;9000F;8000F:100')
gg.refineNumber('9000;8000',gg.TYPE_FLOAT)
gg.toast('SPEED⚡[ON]')
local novo_valor = gg.prompt({'𝗘𝘀𝗰𝗼𝗹𝗵𝗮 𝗮 𝘃𝗲𝗹𝗼𝗰𝗶𝗱𝗮𝗱𝗲'}, {'Exemplo (100,000)'}, {'numero'}) [1]
gg.getResults(10)
gg.editAll(novo_valor, gg.TYPE_FLOAT)
gg.clearResults()
end-- SPD 1
end-- SS 2


if SS == 3 then
gg.searchNumber('-8,388,608D;155,555F;70F;7F:113')
gg.refineNumber('70',gg.TYPE_FLOAT)
gg.getResults(20)
gg.editAll('9E9',gg.TYPE_FLOAT)
gg.clearResults ()
gg.toast('ENERGIA🌀[ON]')
end-- SS 3

if SS == 4 then 
gg.searchNumber('-8,388,608D;155,555F;9E9F;7F:113')
gg.refineNumber('7',gg.TYPE_FLOAT)
gg.getResults(20)
gg.editAll('3E30',gg.TYPE_FLOAT)
gg.clearResults ()
gg.toast('DANO☠️[ON]')
end-- SS 4

if SS == 5 then


end-- SS 5 

if SS == 6 then
Menu ()
end-- SS 6
end-- MP 1

if MP == 2 then
Spam = gg.choice({'sᴘᴀᴍ ᴀᴛᴛᴀᴄᴋ 1','sᴘᴀᴍ ᴀᴛᴛᴀᴄᴋ 2','ᴠᴏʟᴛᴀʀ'})

if Spam == 1 then

gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('110F;1F')
gg.refineNumber('110',gg.TYPE_FLOAT)
gg.getResults(100)
gg.editAll('9999',gg.TYPE_FLOAT)
gg.clearResults ()


gg.searchNumber('25F;61F')
gg.refineNumber('25;61',gg.TYPE_FLOAT)
gg.getResults(20)
gg.editAll('9,999,999',gg.TYPE_FLOAT)
gg.clearResults ()

gg.searchNumber('3F;4.20389539e-45F;0F;35F;7F;10F;2F:593')
gg.refineNumber('0',gg.TYPE_FLOAT)
gg.getResults(20)
gg.editAll('0.9',gg.TYPE_FLOAT)
gg.clearResults ()

gg.searchNumber('3F;4.20389539e-45F;0.9F;35F;7F;10F;2F:593')
gg.refineNumber('35',gg.TYPE_FLOAT)
gg.getResults(20)
gg.editAll('9E5',gg.TYPE_FLOAT)
gg.clearResults ()
gg.toast('SPAM♦️[ON]')
Menu ()
end-- Spam 1

if Spam == 2 then

gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('1F;7F;1,094,713,344D;0F;2F:225')
gg.refineNumber('1,094,713,344',gg.TYPE_DWORD)
gg.getResults(100)
gg.editAll('-8,388,608',gg.TYPE_DWORD)
gg.clearResults ()

gg.searchNumber('1F;7F;-8,388,608D;0F;2F:225')
gg.refineNumber('0',gg.TYPE_FLOAT)
gg.getResults(100)
gg.editAll('999',gg.TYPE_FLOAT)
gg.clearResults ()

gg.searchNumber('1F;1,088,421,888D;-8,388,608D;999F;2F:225')
gg.refineNumber('1.088.421.888',gg.TYPE_DWORD)
gg.getResults(100)
gg.editAll('-8,388,608',gg.TYPE_DWORD)
gg.clearResults ()
gg.toast('SPAM♦️[ON]')
Menu ()
end-- Spam 2

if Spam == 3 then
Menu ()
end-- Spam 3
end-- MP 2

if MP == 3 then 

Controle = gg.choice({'ᴏɴ','ᴏғғ','ᴠᴏʟᴛᴀʀ'})

if Controle == 1 then

gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('72F;73F')
gg.refineNumber('72',gg.TYPE_FLOAT)
gg.getResults(20)
gg.editAll('73.01 ',gg.TYPE_FLOAT)
gg.clearResults ()


gg.searchNumber('70.01F;73F')
gg.refineNumber('70.01',gg.TYPE_FLOAT)
gg.getResults(20)
gg.editAll('73.01',gg.TYPE_FLOAT)
gg.clearResults ()
gg.toast('CONTROLE👹[ON]')
Menu ()
end-- Controle 1

if Controle == 2 then

gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('73.01F;73F')
gg.refineNumber('73.01',gg.TYPE_FLOAT)
gg.getResults(20)
gg.editAll('72',gg.TYPE_FLOAT)
gg.clearResults ()

gg.searchNumber('70.01F;73F')
gg.refineNumber('70.01',gg.TYPE_FLOAT)
gg.getResults(20)
gg.editAll('72',gg.TYPE_FLOAT)
gg.clearResults ()
gg.toast('CONTROLE👹[OFF]')
Menu ()

end-- Controle 2

end-- MP 3

if MP == 4 then

gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('7F;4F;1,000F:353')
gg.refineNumber('1,000',gg.TYPE_FLOAT)
gg.getResults(100)
gg.editAll('3E30',gg.TYPE_FLOAT)
gg.clearResults ()

gg.searchNumber('10,000F;0F')
gg.refineNumber('10,000',gg.TYPE_FLOAT)
gg.getResults(100)
gg.editAll('3E30',gg.TYPE_FLOAT)
gg.clearResults ()
gg.toast('LV HACK [ON]')
Menu ()
end-- MP 4

if MP == 5 then

Hacks = gg.choice({'sᴜᴘᴇʀ ᴢᴏᴏᴍ','ɢɪʀᴏ ʀᴀᴘɪᴅᴏ','ᴠᴏʟᴛᴀʀ'})

if Hacks == 1 then
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('6F;15F;0.05F')
gg.refineNumber('15',gg.TYPE_FLOAT)
gg.getResults(100)
gg.editAll('1E6',gg.TYPE_FLOAT)
gg.clearResults ()
gg.toast('SUPER ZOOM [ON]')
Menu ()
end-- Hacks 1

if Hacks == 2 then
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('45F;0F:100')
gg.refineNumber('45',gg.TYPE_FLOAT)
gg.getResults(100)
gg.editAll('150',gg.TYPE_FLOAT)
gg.clearResults ()
gg.toast('GIRO RAPIDO [ON]')
Menu ()
end-- Hacks 2

if Hacks == 3 then
Menu ()
end-- Hacks 3


end-- MP 5

if MP == 6 then
gg.alert('Obrigado por ussr a minha script!! 😁. Se houver algum bug, por favor fale nos comentários do meu canal')
os.exit ()
end-- MP 6



end-- function
while true do
if gg.isVisible(true) then
gg.setVisible(false)
Menu ()
end
end







