flight_status = "closed"

unless flight_status == "open"
    check_change = "can not"
else
    check_change = "can"
end

puts "You #{check_change} get your flight now"
