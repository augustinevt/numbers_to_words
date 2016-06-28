class String
  def number_to_word

    self.scan(/.../)
    # irregulars={11=>"eleven",12=>"twelve",13=>"thirteen",14=>"fourteen",15=>"fifteen",16=>"sixteen",17=>"seventeen",18=>"eighteen",19=>"nineteen"}
    #
    # tens={2=>"twenty",3=>"thirteen",4=>"forty",5=>"fifty",6=>"sixty",7=>"seventy",8=>"eighty",9=>"ninety"}
    #
    # ones={1=>"one",2=>"two",3=>"three",4=>"four",5=>"five",6=>"six",7=>"seven", 8=>"eight",9=>"nine"}

  end
end

puts "234564789".number_to_word
