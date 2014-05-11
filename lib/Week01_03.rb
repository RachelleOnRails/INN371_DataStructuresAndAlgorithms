# Write a program that converts a distance in metres to the corresponding distance in feet and
# inches. The conversion factors needed are:
# 1 inch = 0.0254 metres
# 1 foot = 12 inches

class InvalidInput < StandardError
end

class Week01_03

  def self.valid?(input)
    input.to_s[/^[0-9]*\.?[0-9]*$/] # all numbers (integers, float, zero)
  end

  def self.call(metres)

    if valid? metres
      result = convert_to_feet_and_inches(metres.to_f)
      puts "The converted distance is #{result[0]} feet and #{result[1]} inches"
      result
    else
      raise InvalidInput
    end
  end

  def self.get_input
    puts "Enter a distance in metres: "
    STDOUT.flush
    gets.chomp
  end

  def self.convert_to_feet_and_inches (metres)
    total_inches = metres / 0.0254
    feet = total_inches.to_i / 12
    inches = (total_inches % 12).round(5)
    return feet, inches
  end

end

if __FILE__ == $0
  metres = Week01_03.get_input
  begin
    Week01_03.call(metres)
  rescue InvalidInput
    puts "Invalid input. Only numbers are accepted."
  end
end
