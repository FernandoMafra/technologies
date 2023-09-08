require 'date'

def next_closest_date(arr, queries)
  arr.map! { |date| Date.parse(date) }

  result = []

  queries.each do |query|
    query_date = Date.parse(query)
    closest_date = nil

    arr.each do |date|
      if date > query_date && (closest_date.nil? || date < closest_date)
        closest_date = date
      end
    end

    if closest_date.nil?
      result << "-1"
    else
      result << closest_date.strftime("%d/%m/%Y")
    end
  end

  result
end

# Exemplo de uso:
dates = ["01/09/2023", "15/10/2023", "31/12/2023", "20/02/2024"]
queries = ["05/10/2023", "30/12/2025", "01/01/2025"]

results = next_closest_date(dates, queries)
results.each { |result| puts result }
