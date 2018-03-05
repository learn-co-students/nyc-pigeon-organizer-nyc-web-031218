def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |symbol, hash|
    hash.each do |attribute, array|
      array.each do |name|
        if !pigeon_list.include?(name)
          pigeon_list[name] = {symbol => [attribute.to_s]}
        elsif pigeon_list[name].include?(symbol)
          pigeon_list[name][symbol] << attribute.to_s
        else
          pigeon_list[name][symbol] = [attribute.to_s]
        end
      end
    end
  end
  pigeon_list
end
