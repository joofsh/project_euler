@lib = {
  0 => "",
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five",
  6 => "six",
  7 => "seven",
  8 => "eight",
  9 => "nine",
  10 => "ten",
  11 => "eleven",
  12 => "twelve",
  13 => "thirteen",
  14 => "fourteen",
  15 => "fifteen",
  16 => "sixteen",
  17 => "seventeen",
  18 => "eighteen",
  19 => "nineteen",
  20 => "twenty",
  30 => "thirty",
  40 => "forty",
  50 => "fifty",
  60 => "sixty",
  70 => "seventy",
  80 => "eighty",
  90 => "ninety"
}

@scale = {
  3 => 'hundred',
  4 => 'thousand'
}


def num_to_word num
  case num.to_s.length
    when 1
      @lib[num]
    when 2
      if @lib[num]
        @lib[num]
      else
        @lib["#{num.to_s[0]}0".to_i] +  num_to_word(num.to_s[1].to_i)
      end
    when 3
      word = @lib["#{num.to_s[0]}".to_i] + @scale[3]
      word += ("and" + num_to_word(num.to_s[1..-1].to_i)) unless num.to_s[1..-1] == '00'
      word
    when 4
      @lib["#{num.to_s[0]}".to_i] + @scale[4] + num_to_word(num.to_s[1..-1].to_i)
  end

end

def total_letters max
  (1..max).inject(0) do |sum, num|
    sum += num_to_word(num).length
  end
end

p total_letters 1000

