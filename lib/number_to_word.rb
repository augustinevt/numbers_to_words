class String
  def number_to_word

    grouped_array = self.scan(/.../)

    irregulars={10=>"ten", 11=>"eleven",12=>"twelve",13=>"thirteen",14=>"fourteen",15=>"fifteen",16=>"sixteen",17=>"seventeen",18=>"eighteen",19=>"nineteen"}

    tens={2=>"twenty",3=>"thirteen",4=>"forty",5=>"fifty",6=>"sixty",7=>"seventy",8=>"eighty",9=>"ninety"}

    ones={1=>"one",2=>"two",3=>"three",4=>"four",5=>"five",6=>"six",7=>"seven", 8=>"eight",9=>"nine"}

    places = {1 => "thousand", 2 => "million", 3 => "trillion"}

    output_array = []

    grouped_array.each do |group|
      first_digit = group[0].to_i()
      second_digit = group[1].to_i()
      third_digit = group[2].to_i()

      if (first_digit > 0)
      output_array.push(ones[first_digit]+' hundred')
      end

      if (second_digit == 1)
        output_array.push(irregulars[group[1,2].to_i()])

      elsif (second_digit > 1)
        output_array.push(tens[second_digit])

        if (third_digit > 0)
          output_array.push(ones[third_digit])

        end
      end
    end
  output_array.join(' ')
  end
end

puts "343".number_to_word
