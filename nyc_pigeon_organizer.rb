require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  names = []
  data.each { |descriptor, type|
    type.each { |type_name, name_array|
      names << name_array
      }
    }
  names.flatten!.uniq!
  new_hash = {}
  idx = 0
  while idx < names.size
    new_hash[names[idx]] = {}
    idx += 1
  end
  new_hash.each { |name, description|
    data.each { |descriptor, type|
      type.each { |type_name, name_array|
        if name_array.include?(name)
          if new_hash[name][descriptor] == nil
            new_hash[name][descriptor] = [type_name.to_s]
          else
            new_hash[name][descriptor] << type_name.to_s
          end
        end
        }
      }
    }
  new_hash
end