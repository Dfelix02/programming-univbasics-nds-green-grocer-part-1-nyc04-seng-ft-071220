require "pry"


def find_item_by_name_in_collection(name, collection)
  collection.find do |key|
    key[:item]==name
  end
end

def find_item_by_name_in_collection_count(name, collection)
  collection.count do |key|
    key[:item]==name
  end
end

def consolidate_cart(cart)
  cart.each do |key|
    key[:count] = find_item_by_name_in_collection_count(key[:item],cart)
  end
  

end
       

  