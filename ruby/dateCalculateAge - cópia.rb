require 'date'

def calculate_age(birth_date, present_date)
  birth_date = Date.parse(birth_date)
  present_date = Date.parse(present_date)

  age_in_days = (present_date - birth_date).to_i
  years = age_in_days / 365
  months = (age_in_days % 365) / 30
  days = (age_in_days % 365) % 30

  age = {
    dias_totais: age_in_days,
    years: years,
    months: months,
    days: days
  }

  return age
end

# Exemplo de uso:
birth_date = "21/01/1967"
present_date = "05/09/2023"

age = calculate_age(birth_date, present_date)

puts "Present Age = Dias Totais: #{age[:dias_totais]} Years: #{age[:years]}  Months: #{age[:months]}  Days: #{age[:days]}"
