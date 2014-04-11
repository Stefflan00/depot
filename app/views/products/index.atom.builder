atom_feed do |feed|
  feed.title "All Products"
  @products.each do |product|
    feed.entry product do |entry|
      entry.title product.title
      entry.content product.description
      entry.price number_to_currency product.price 
      end
    end


end
