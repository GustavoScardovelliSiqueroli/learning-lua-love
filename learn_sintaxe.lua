local pessoa_gustavo = {
	nome = "Gustavo Scardovelli Siqueroli",
	teste = function()
		-- AQUI NAO POSSO PEGAR pessoa_gustavo.nome
		return "Ola, sou"
	end,
}
print(pessoa_gustavo.teste())

print(getfenv())

local function f()
	print("DENTRO DE F ", pessoa_gustavo.nome)
	return "1", "10"
end

A, B = f()
print(A, B)

print()
-- PRIMEIRO ATRIBUI, ENQUANTO FOR MENOR QUE & ACAO (SOMA 2)
for i = tonumber(A) - 1, tonumber(B), 2 do
	print(i)
end

VAR = 2
while true do
	print(VAR)
	VAR = VAR + VAR
	if VAR > 100000 then
		break
	end
end
