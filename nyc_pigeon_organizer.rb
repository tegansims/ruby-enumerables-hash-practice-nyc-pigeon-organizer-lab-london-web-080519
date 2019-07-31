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
      :color => [],
      :gender => [],
      :lives => []
      }
    end
  # --- ^^^ unique pigeon names have been found, and entered into a new hash ----- # 
  
  # ----- NEXT UP: to look at each of the new_hash's keys, and add the values of the old hash (data)'s :color (potentially multiple). Then :gender, then :lives 
  
  data.each do |attribute, value| #key = :color, value = {purple=> ... "Alex"]}
    detail.each do |detail2, pigeons| #key= :purple, value = ["Theo", "Peter Jr", "Lucky"]
      pigeons.each do |pigeon|  # "Theo"
        if
          new_hash[pigeon][attribute] << detail2.to_s
        end
      end
    end
  end
  new_hash
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
