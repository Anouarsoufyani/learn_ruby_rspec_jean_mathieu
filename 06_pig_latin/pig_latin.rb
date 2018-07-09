#write your code here
#définition de la méthode translate
def translate(string)
  #transforme la string en array
array = string.split(" ")
 #on applique la fonction à chaque mots
pigged_array = array.map! {|x| pigify(x)}
#on transformel'array en string
return pigged_array.join(" ")
end
#définition de la méthode pigify
def pigify(word)
  #définition des voyelles
  vowels = ["a", "e", "i", "o", "u"]
  #si la première lettre est une voyelle, on ajoute "ay" au mot
  if vowels.include? word[0].downcase
    word + "ay"
  # 2 cas pour "qu"
  #si un mot commence "qu" on séléctionne de la 3eme à la dernière lettre en enlevant le "qu" et ajoute "quay" à la fin
elsif word[0..1] == "qu" #quiet
    #2 est la 3eme lettre et -1 est la dernière lettre
    word[2..-1] + "quay"
  #si un mot commence par "qu" avec word[3..-1] on sélectionne le "are" le word[0..2] on prend le squ + ay
  elsif word[1..2] == "qu"
    word[3..-1] + word[0..2] + "ay"
  #Pour les mots de 3 consonnes
  elsif !(vowels.include? word[0]) && !(vowels.include? word[1]) && !(vowels.include? word[2])
    word[3..-1] + word[0..2] + "ay"
    #Pour les mots de 2 consonnes
  elsif !(vowels.include? word[0]) && !(vowels.include? word[1])
    word[2..-1] + word[0..1] + "ay"
    #Pour les mots de 1 consonnes
  else
    word[1..-1] + word[0] + "ay"
  end
end

