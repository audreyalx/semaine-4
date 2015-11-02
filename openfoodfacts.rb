# les outils
require 'open-uri'
require 'json'

# sur quel produit l'utilisateur veut-il travailler 
loop do
    puts "Entrez un numero de Code Barre:"
    bar_code = gets.chomp

# accéder aux bonnes informations
    url="http://fr.openfoodfacts.org/api/v0/produit/#{bar_code}.json"

# ouverture fichier + conversion + résultat
    json = open(url).read

    data= JSON.parse(json)

    puts data['product']['product_name']

end
