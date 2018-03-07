require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  names = data[:color].values.flatten.uniq
  pigeonhash= {}
  ans = {}

  data.keys.each do |attribute|
    pigeonhash[attribute] = []
  end

  names.each do |name|
    ans[name] = pigeonhash
  end

  data.each do |description, hash|
    hash.each do |attribute, namearr|
      namearr.each do |name|
        if attribute.is_a?(Symbol) && !(ans[name][description].include?(attribute.id2name))
          ans[name][description] << attribute.id2name
        elsif attribute.is_a?(String) && !(ans[name][description].include?(attribute))
          ans[name][description] << attribute
        end
      end
    end
  end
  return ans
end
