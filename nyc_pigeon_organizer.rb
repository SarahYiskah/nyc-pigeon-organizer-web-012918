require 'pry'

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}


def nyc_pigeon_organizer(data)
  new_hash = {}
  count = 0
    data.each do |k,v|
      v.each do |attribute, name|
        name.each do |n|
          if !new_hash[n]
            new_hash[n] = {}
          end
          if new_hash[n][k]
            new_hash[n][k] << attribute.to_s
          else
            new_hash[n][k] = [attribute.to_s]
          end
          count+=1
        end
      end
    end
  new_hash
end
