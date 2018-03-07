require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  names = data[:color].values.flatten.uniq
  ans = {}


  names.each do |name|
    ans[name] = {}
    data.keys.each do |attribute|
      ans[name].merge!({attribute => []})
    end
  end

    data.each do |description, hash|
    hash.each do |attribute, namearr|
      namearr.each do |nam|
        if attribute.is_a?(Symbol)
          ans[nam][description] << attribute.id2name
        else
          ans[nam][description] << attribute
        end
      end
    end
  end
  return ans

end

#         if attribute.is_a?(Symbol) && !(ans[name][description].include?(attribute))
#           ans[name][description] << attribute.id2name
#         elsif attribute.is_a?(String) && !(ans[name][description].include?(attribute))
#           ans[name][description] << attribute
#         end
#       end
#     end
#   end
#   return ans
# end
