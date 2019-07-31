require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}

  data.each do |attribute, detail| #color, puple
    detail.each do |detail2, pigeons| #purple, names
      pigeons.each do |pigeon|  #names array
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