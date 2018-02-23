# # Initial Solution

# def nyc_pigeon_organizer(data)
#   organized_pigeons = {}
#   data.each do |data_category, data_hash|
#     data_hash.each do |key, names_array|
#       names_array.each do |name|
#         if organized_pigeons[name].nil?
#           organized_pigeons[name] = {}
#         end
#         if organized_pigeons[name][data_category].nil?
#           organized_pigeons[name][data_category] = []
#         end
#         organized_pigeons[name][data_category] << key.to_s
#       end
#     end
#   end
#   organized_pigeons
# end

# # Solution with `||=`
# # This is cleaner
#
#  def nyc_pigeon_organizer(data)
#   organized_pigeons = {}
#   data.each do |data_category, data_hash|
#     data_hash.each do |key, names_array|
#       names_array.each do |name|
#         organized_pigeons[name] ||= {}
#         organized_pigeons[name][data_category] ||= []
#         organized_pigeons[name][data_category] << key.to_s
#       end
#     end
#   end
#   organized_pigeons
# end

# Solution using each_with_array

 def nyc_pigeon_organizer(data)
  data.each_with_object({}) do |(data_category, data_hash), new_hash|
    data_hash.each do |key, names_array|
      names_array.each do |name|
        new_hash[name] ||= {}
        new_hash[name][data_category] ||= []
        new_hash[name][data_category] << key.to_s
      end
    end
  end
end
