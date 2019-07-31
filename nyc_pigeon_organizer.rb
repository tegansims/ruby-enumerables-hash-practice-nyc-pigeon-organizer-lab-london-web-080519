require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}

  data.each do |attribute, detail| #key = :color, value = {purple=> ... "Alex"]}
    detail.each do |detail2, pigeons| #key= :purple, value = ["Theo", "Peter Jr", "Lucky"]
      pigeons.each do |pigeon|  #names array
      binding.pry
        if !pigeon_list[pigeon]
          pigeon_list[pigeon] =
          {color: [], gender: [], lives: []}
        end
        if
          pigeon_list[pigeon][attribute] << detail2.to_s
        end
      end
    end
  end
  pigeon_list
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

nyc_pigeon_organizer(pigeon_data)