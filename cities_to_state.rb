@cities = {
  "NY" => ["NYC","Buffalo","Rochester"],
  "CA" => ["SFO","LA","San Jose"],
  "FL" => ["Miami","Orlando","Tempa"],
  "TX" => ["Austin","Houston"]
}



def find_state_for_city(cityname)
    @cities.each do |state , city|
      if city.include? cityname     
      return state
      end
      # return statename
     # puts city
  end

end

puts find_state_for_city("NYC")
