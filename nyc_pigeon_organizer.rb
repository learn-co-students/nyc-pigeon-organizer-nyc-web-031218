require "pry"
def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash={}
  data.each do |first, second|
    # binding.pry
    second.each do |sec,third|
      # binding.pry
      third.each do |names|
        # binding.pry
        if !new_hash.include?(names)
          new_hash[names] = {first =>[sec.to_s]}
        elsif new_hash[names].include?(first)
          new_hash[names][first] << sec.to_s
        else
          new_hash[names][first] = [sec.to_s]
        # elsif !new_hash.include?(names[first])
        #   new_hash[names][first]=[sec.to_s]
        # else
        #   new_hash[names]=first
        # new_hash[names][:gender]=[sec]
        # new_hash[names][:lives]=[sec]
        # binding.pry
        end
      end
    end
  end
  new_hash
  # binding.pry
end
