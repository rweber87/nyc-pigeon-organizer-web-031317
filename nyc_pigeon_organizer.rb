def nyc_pigeon_organizer(data)
  organized_pigeons = pigeon_names(data)

  data.each do |attribute_type, attribute_name|
    attribute_name.each do |description, name_array|
      name_array.each do |pigeon_name|
        puts organized_pigeons
        organized_pigeons[pigeon_name][attribute_type] << description.to_s
      end
    end
  end

  organized_pigeons
end


def pigeon_names(data)
  pigeons_organized = {}

  names = data[:gender][:male] + data[:gender][:female]

  names.each do |name|
      pigeons_organized[name] = pigeon_attributes(data)
  end

  pigeons_organized
end

def pigeon_attributes(data)
  attribute_hash = {}
  attributes = data.keys

  attributes.each do |attribute|
    attribute_hash[attribute] = []
  end

  attribute_hash
end
# desired output per pigeon
# "Theo" => {
#   :color => ["purple", "grey"],
#   :gender => ["male"],
#   :lives => ["Subway"]
# }

# :color => {
#   :purple => ["Theo", "Peter Jr.", "Lucky"],
#   :grey => ["Theo", "Peter Jr.", "Ms. K"],
#   :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#   :brown => ["Queenie", "Alex"]
# },
# :gender => {
#   :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#   :female => ["Queenie", "Ms. K"]
# },
# :lives => {
#   "Subway" => ["Theo", "Queenie"],
#   "Central Park" => ["Alex", "Ms. K", "Lucky"],
#   "Library" => ["Peter Jr."],
#   "City Hall" => ["Andrew"]
# }}
