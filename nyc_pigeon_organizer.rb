require "pry"

def nyc_pigeon_organizer(data)
  new_hash = {}

  data.each do |key, value|
    value.each do |key2, value2_array|
      value2_array.each do |name|
        if !new_hash.include?(name)
          new_hash[name] = {key => [key2.to_s]}
        elsif new_hash[name].include?(key)
          new_hash[name][key] << key2.to_s
        else
          new_hash[name][key] = [key2.to_s]
        end
      end
    end
  end

  new_hash
end
