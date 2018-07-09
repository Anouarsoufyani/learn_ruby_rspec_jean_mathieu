#write your code here
def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, number = 2)
  s = "#{string} " * number
  s.chop
end

def start_of_word(string, number)
  string.slice(0,number)
end

def first_word(string)
  string.split.first
end

def titleize(string)
  string.scan(/\w+/).map.with_index do|c, i|

    if i != 0 && c == "the" || c == "and"
      c.downcase
    else
      c.capitalize
    end

  end
  .join(" ")

end
