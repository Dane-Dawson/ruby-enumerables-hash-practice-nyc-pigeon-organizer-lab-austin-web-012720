def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |info, info_type| #search data hash and for each element that describes information
    info_type.each do |description, description_names| 
      description_names.each do |name| 
        if !pigeon_list.key?(name) 
          pigeon_list[name] = {}
        else 
          new_info_array = [description]
         pigeon_list[name][info.to_s].push new_info_array
       end
      end
    end
  end
  pigeon_list
end
