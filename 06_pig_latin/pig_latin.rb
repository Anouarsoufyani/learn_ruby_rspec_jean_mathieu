# #write your code here
# def translate(a)
# voyelles = []
# consonnes = []
# compteurV = 0
# motsRecomp = ""
#
#   a.scan(/\w+/).map do |c|
#     c.scan(/./).map.with_index do |char, i |
#
#       if i == 0 && char =~ /[aeiou]/
#         compteurV += 1
#         voyelles[c] += char
#       else
#         consonnes[c] += char
#       end
#
#       if i == 1 && char =~ /[aeiou]/ && compteurV < 1
#         compteurV += 1
#         voyelles[c] += char
#       else
#         consonnes[c] += char
#       end
#
#       if i == 2 && char =~ /[aeiou]/ && compteurV < 1
#         compteurV += 1
#         voyelles[c] += char
#       else
#         consonnes[c] += char
#       end
#       if i != 0 && i != 1 && i != 2
#         voyelles[c] += char
#       end
#   motsRecomp += voyelles[c] + consonnes[c] + " "
#     end
#
#   end
#   motsRecomp.chop.insert(-1 , "ay")
# end
# puts translate("dfdfsoudf sdifsdaf")

#write your code here
def translate(a)
voyelles = []
consonnes = []
compteurV = 0
motsRecomp = ""

  a.scan(/\w+/).map do |c|
    c.scan(/./).map.with_index do |char, i |

      if i == 0 && char =~ /[aeiou]/
        c + "ay"
      end
    end

  end
end
puts translate("afdfsoudf adifsdaf")
