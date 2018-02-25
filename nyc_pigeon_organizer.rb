require 'pry'
def pigeon_data
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
end

def pigeon_info(pigeon_hash)

  pigeon_arr = []
  attribute_arr = []

  pigeon_hash.each{
    |attribute_cat, data|
    attribute_arr << attribute_cat

    data.each{
      |attribute, pigeon_name_arr|
      #binding.pry

      pigeon_name_arr.each{
        |pigeon_name|

        if !pigeon_arr.include?(pigeon_name)
           pigeon_arr << pigeon_name
        end
      }
    }
  }

  return [pigeon_arr, attribute_arr]

end

def nyc_pigeon_organizer(pigeon_hash)

  pigeon_arr = pigeon_info(pigeon_hash)
  #contains names of pigeons (String)
  names_arr = pigeon_arr[0]
  #contains names of attributes (Symbol)
  attributes_arr = pigeon_arr[1]
  puts("arr: #{pigeon_arr}")

  goal_hash = {}
  #first level - names (String)
  names_arr.each{
    |name|
    goal_hash[name] = {}
  }

  #second level - attributes (Symbol)
  attributes_arr.each{
    |attr|
    goal_hash.each{
      |name, data|
      goal_hash[name][attr] = []
    }
  }
#  binding.pry



pigeon_hash.each{
  |category, data|

  data.each{
    |attribute, array|

    array.each{
      |name|
      goal_hash[name][category] << attribute.to_s


    }
  }
}


return goal_hash









end

nyc_pigeon_organizer(pigeon_data)
