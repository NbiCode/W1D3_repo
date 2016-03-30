


# @taxes = {
#  NY: 7.5,
#  CA: 15.0,
#  FL: 8.0,
#  TX: 9.0
# }



@taxes = {
  "NY" => 7.5,
  "CA" => 15.0,
  "FL" => 8.0,
  "TX" => 9.0
}
def calculate_tax(statecode,salary)
    taxrate = @taxes[statecode]
    tax_amount = (taxrate * salary)/100
    return tax_amount.round(2)
end

puts calculate_tax("CA",9994.4567)
