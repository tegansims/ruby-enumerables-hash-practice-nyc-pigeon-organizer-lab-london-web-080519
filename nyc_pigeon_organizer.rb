require 'pry'

def nyc_pigeon_organizer(data)
 
  new_hash = {}
 
  # ------ getting unique pigeon names across the whole original hash ------ #
  
  x = 0 
  pigeon_names = []
  while x < data.values.length
      pigeon_names << data.values[x].values.flatten
      x += 1
  end
  pigeon_names.flatten.uniq.each do 
    |name| new_hash[name] = {
      :color => {},
      :gender => {},
      :lives => {}
      }
    end
  # --- ^^^ unique pigeon names have been found, and entered into a new hash ----- # 
  
  # ----- NEXT UP: to look at each of the new_hash's keys, and add the values of the old hash (data)'s :color (potentially multiple). Then :gender, then :lives 
  
  # new_hash.values[0].keys[0]    might be helpful. Returns the first :color from the first key of the new_hash
  
  # iterating through each pigeon name to get the pigeon color
  new_hash.keys.each { |name|
    :color => {name}
  }
  
  new_hash
binding.pry
end

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

pigeon_list = {
  "Theo" => {
    :color => ["purple", "grey"],
    :gender => ["male"],
    :lives => ["Subway"]
  },
  "Peter Jr." => {
    :color => ["purple", "grey"],
    :gender => ["male"],
    :lives => ["Library"]
  },
  "Lucky" => {
    :color => ["purple"],
    :gender => ["male"],
    :lives => ["Central Park"]
  },
  "Ms. K" => {
    :color => ["grey", "white"],
    :gender => ["female"],
    :lives => ["Central Park"]
  },
  "Queenie" => {
    :color => ["white", "brown"],
    :gender => ["female"],
    :lives => ["Subway"]
  },
  "Andrew" => {
    :color => ["white"],
    :gender => ["male"],
    :lives => ["City Hall"]
  },
  "Alex" => {
    :color => ["white", "brown"],
    :gender => ["male"],
    :lives => ["Central Park"]
  }
}

  nyc_pigeon_organizer(pigeon_data)