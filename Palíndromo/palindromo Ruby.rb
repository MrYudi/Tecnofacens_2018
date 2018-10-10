i = 's'
while (i != 'n') do
puts "Digite uma palavra"
derecho = gets.chomp.to_s
reves = derecho.reverse

if(derecho==reves) then
    puts "É palindromo"

else
    puts "Não é palindromo"

end
puts "Deseja continuar? (s/n)"
i = gets.chomp.to_s
end