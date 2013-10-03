class Inwords
  def initialize
    @hash_map = {1 => :one, 2 => :two, 3 => :three, 4 => :four, 5 => :five, 6 => :six, 7 => :seven, 8 => :eight,
                 9 => :nine,10 => :ten, 11 => :eleven,12 => :twelve, 13 => :thirteen, 14 => :fourteen, 15 => :fifteen,
                 16 => :sixteen, 17 => :seventeen, 18 => :eighteen, 19 => :nineteen, 20 => :twenty, 30 => :thirty,
                 40 => :forty, 50 => :fifty, 60 => :sixty, 70 => :seventy, 80 => :eighty, 90 => :ninety, 100 => :hundred,
                 1000 => :onethousand}
    @hundreds = [100,200,300,400,500,600,700,800,900]
  end

  def in_words(num)
    return @hash_map[num].to_s if @hash_map.has_key?(num) && !@hundreds.include?(num)
    return @hash_map[num.to_s[0].to_i*10].to_s + @hash_map[num.to_s[1].to_i].to_s if num.to_s.length < 3 &&
      !@hundreds.include?(num)
    return @hash_map[num.to_s[0].to_i].to_s + "hundredand" + in_words(num.to_s[1..-1].to_i)  if num.to_s.length > 2 &&
      num.to_s.length < 4 && !@hundreds.include?(num)
    @hash_map[num.to_s[0].to_i].to_s + @hash_map[100].to_s
  end

end

number = Inwords.new
output=""
1000.times {|num| output << number.in_words(num+1)}
p output.length
