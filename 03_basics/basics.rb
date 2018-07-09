# write your code here
def who_is_bigger(a, b, c)
  if a == nil || b == nil || c == nil
    "nil detected"
  else
    if a > b && a > c
      "a is bigger"
    elsif b > a && b > c
      "b is bigger"
    else
      "c is bigger"
    end
  end
end

def reverse_upcase_noLTA(string)
  string.reverse.upcase.tr!("LTA","")
end

def array_42(arr)
  arr.any? { |element| element == 42 }
end

def magic_array(arr)
  arr.flatten.uniq.delete_if { |e| e % 3 == 0  }.map { |e| e*2  }.sort
end
