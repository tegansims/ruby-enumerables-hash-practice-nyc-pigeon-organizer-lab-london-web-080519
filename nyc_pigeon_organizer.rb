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
    value.each do |detail, pigeons| #key= :purple, value = ["Theo", "Peter Jr", "Lucky"]
      pigeons.each do |pigeon|  # "Theo"
        if
          new_hash[pigeon][attribute] << detail.to_s
        end
      end
    end
  end
  new_hash
end

