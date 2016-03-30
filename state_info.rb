# require 'pry'







@states = {
  "OR" => 'Oregon',
  "FL" => 'Florida',
  "CA" => 'California',
  "NY" => 'New York',
  "MI" => 'Michigan'
}
@states["IL"] = "Illinios"
@states["TX"] = "Texas"  


@cities = {
  "NY" => ["NYC","Buffalo","Rochester"],
  "CA" => ["SFO","LA","San Jose"],
  "FL" => ["Miami","Orlando","Tempa"],
  "TX" => ["Austin","Houston"]
}


@taxes = {
  "NY" => 7.5,
  "CA" => 15.0,
  "FL" => 8.0,
  "TX" => 9.0
}


# Method describe_state
 def describe_state(statecode)
    if @cities[statecode].nil?
      puts "state does not exit"
    else
      return "#{statecode} is for #{@states[statecode]} and it \ 
              has the following cities #{@cities[statecode]}"
    end
 end
# binding.pry
# enteredstate == @cities[statecode]

#puts "Please the state code"
#enteredstate2 = gets.chomp.upcase
#describe_state(enteredstate2)


# Method calculate_tax
def calculate_tax(statecode,salary)
    taxrate = @taxes[statecode]
    tax_amount = (taxrate * salary)/100
    return tax_amount.round(2)
end

# Method find_state_for_city
def find_state_for_city(cityname)
    @cities.each do |state , city|
      if city.include? cityname.upcase     
        return "Your city is in #{state}"
      end
  end
end


puts "Enter your state Please"
enteredstate = gets.chomp.upcase
puts describe_state(enteredstate)

puts "Enter your salary"
salary = gets.chomp.to_i
puts "Your taxes are"
puts calculate_tax("CA",salary)
puts "Please pay on time"

puts "Enter your city"
cityname = gets.chomp.upcase
puts find_state_for_city(cityname)



