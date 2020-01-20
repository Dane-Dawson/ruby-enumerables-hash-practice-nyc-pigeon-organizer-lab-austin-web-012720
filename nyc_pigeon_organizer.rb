def nyc_pigeon_organizer(data)
  pigeon_list = {}
  #pigeon_list outputs = {"names"{:color["description"], :gender["description"], :lives["locations"]}}
  #data inputs = {:color{:purple["names"], :grey["names"], :white["names"], :brown["names"]}, :gender{:male["names"], :female["names"]}, :lives{"locations"["names"]}}
  data.keys().each do |info| #search data hash and for each element that describes information
    info.keys().each do |description| #search each information hash and for each element description of possible element
      description.each do |name| #search each description of identifier for each name.
        if !pigeon_list.key?("#{name}") #if pigeon_list hash contains an element matching that name
          
        else #if not, create a new element in pigeon_list that contains the information according to this names current name, info, and description
         pigeon_list["#{name}"][:info] = "#{description}"
       end
      end
    end
  end
  pigeon_list
end
