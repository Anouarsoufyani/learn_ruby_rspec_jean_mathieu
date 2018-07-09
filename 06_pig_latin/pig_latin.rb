def translate(string)
array = string.split(" ")
pigged_array = array.map! {|x| pigify(x)}
result = pigged_array.join(" ")
return result
end

def pigify(word)
  vowels = ["a", "e", "i", "o", "u"]

  if vowels.include? word[0].downcase
    word + "ay"
  # les deux cas "qu"
  elsif word[0..1] == "qu"
    word[2..-1] + "quay"
  elsif word[1..2] == "qu"
    word[3..-1] + word[0..2] + "ay"
  # mot qui commence par les 3 consonnes
  elsif !(vowels.include? word[0]) && !(vowels.include? word[1]) && !(vowels.include? word[2])
    word[3..-1] + word[0..2] + "ay"
  # mot qui commence par 2 consonnes
  elsif !(vowels.include? word[0]) && !(vowels.include? word[1]) # for 2
    word[2..-1] + word[0..1] + "ay"
  # mot qui commence par une consonne
  else
    word[1..-1] + word[0] + "ay"
  end
end

