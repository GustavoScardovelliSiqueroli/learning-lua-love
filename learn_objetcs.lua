local Teste = {}
Teste.__index = Teste

function Teste:new(nome)
	local obj = {}
	setmetatable(obj, self)
	obj.nome = nome
	return obj
end

function Teste:falar()
	print(self.nome)
end

local a = Teste:new("Gustavo")
local b = Teste:new("Maria")

a:falar()
print(b.nome)
