def nyc_pigeon_organizer(data)
  result = data.reduce({}) do |memo, (category, value_hash)|
    value_hash.each_pair do |entry, name_array|
      name_array.each do |name|
        if memo[name] == nil 
          memo[name] = {}
        elsif memo[name][category] == nil 
          memo[name][category] = []
        else 
          memo[name][category].push(entry)
        end 
      end 
    end 
  end 
  result
end
