require 'pry'
def nyc_pigeon_organizer(data)
  new_list = {}
  data.each do |info, datahash|
    datahash.each do |stuff, names|
      names.each do |pigeon|
       
        new_list[pigeon] ||= {}
      
       
        new_list[pigeon][info] ||= []
        
        new_list[pigeon][info] << stuff.to_s
      end 
    end 
  end 
  return new_list
end






