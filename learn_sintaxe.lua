local pessoa_gustavo = {
	nome = "Gustavo Scardovelli Siqueroli",
	teste = function()
		-- AQUI NAO POSSO PEGAR pessoa_gustavo.nome, posso somente se for global
		return "Ola, sou" -- .. pessoa_gustavo.nome
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
	-- print(i)
end

VAR = 2
while true do
	-- print(VAR)
	VAR = VAR + VAR
	if VAR > 100000 then
		break
	end
end

print(10 or 20)
print(10 and 20)
print(nil or false)
print(nil or "primeiro argumento e nil ou false...")
print(false and "NAO VOU SER EXIBIDO")
print("\nsou um" .. " " .. "texto" .. " " .. "concatenado")

print("\n" .. #pessoa_gustavo .. " -- tamanho da tabela com chave valor")
local lista_com_alguns_itens = { "abc (sou o primeiro item)", nil, "ghi" }
print(lista_com_alguns_itens)
print(lista_com_alguns_itens[1])
print("tamanho da lista: " .. #lista_com_alguns_itens)
