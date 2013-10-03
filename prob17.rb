class Inwords
  def initialize
    @hash_map = {1 => :one, 2 => :two, 3 => :three, 4 => :four, 5 => :five, 6 => :six, 7 => :seven, 8 => :eight,
                 9 => :nine,10 => :ten, 11 => :eleven,12 => :twelve, 13 => :thirteen, 14 => :fourteen, 15 => :fifteen,
                 16 => :sixteen, 17 => :seventeen, 18 => :eighteen, 19 => :nineteen, 20 => :twenty, 30 => :thirty,
                 40 => :forty, 50 => :fifty, 60 => :sixty, 70 => :seventy, 80 => :eighty, 90 => :ninety, 100 => :hundred,
                 1000 => :onethousand}
  end

  def in_words(num)
    return @hash_map[num].to_s if @hash_map.has_key?(num) && num != 100
    return @hash_map[20].to_s + @hash_map[num-20].to_s if num > 20 && num < 30
    return @hash_map[30].to_s + @hash_map[num-30].to_s if num > 30 && num < 40
    return @hash_map[40].to_s + @hash_map[num-40].to_s if num > 40 && num < 50
    return @hash_map[50].to_s + @hash_map[num-50].to_s if num > 50 && num < 60
    return @hash_map[60].to_s + @hash_map[num-60].to_s if num > 60 && num < 70
    return @hash_map[70].to_s + @hash_map[num-70].to_s if num > 70 && num < 80
    return @hash_map[80].to_s + @hash_map[num-80].to_s if num > 80 && num < 90
    return @hash_map[90].to_s + @hash_map[num-90].to_s if num > 90 && num < 100
    return @hash_map[1].to_s + @hash_map[100].to_s + "and" + in_words(num-100) if num > 100 && num < 200
    return @hash_map[2].to_s + @hash_map[100].to_s + "and" + in_words(num-200) if num > 200 && num < 300
    return @hash_map[3].to_s + @hash_map[100].to_s + "and" + in_words(num-300) if num > 300 && num < 400
    return @hash_map[4].to_s + @hash_map[100].to_s + "and" + in_words(num-400) if num > 400 && num < 500
    return @hash_map[5].to_s + @hash_map[100].to_s + "and" + in_words(num-500) if num > 500 && num < 600
    return @hash_map[6].to_s + @hash_map[100].to_s + "and" + in_words(num-600) if num > 600 && num < 700
    return @hash_map[7].to_s + @hash_map[100].to_s + "and" + in_words(num-700) if num > 700 && num < 800
    return @hash_map[8].to_s + @hash_map[100].to_s + "and" + in_words(num-800) if num > 800 && num < 900
    return @hash_map[9].to_s + @hash_map[100].to_s + "and" + in_words(num-900) if num > 900 && num < 1000
    @hash_map[num.to_s[0].to_i].to_s + @hash_map[100].to_s
  end

end

number = Inwords.new
output=""
1000.times {|num| output << number.in_words(num+1)}
p output.length
