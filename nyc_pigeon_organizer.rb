require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  result = {}

  data.each do |traits, traitset|
    traitset.each do |set, names|
        names.each do |name|
          if result[name].nil?
            result[name] = {}
          end
          if result[name][traits].nil?
            result[name][traits] = []
          end
          result[name][traits] << set.to_s
      end
    end
  end
result
end
