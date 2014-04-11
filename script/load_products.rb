Product.transaction do
  (1..20).each do |i|
    Product.create(title: "Title #{i}", description: "#{i} description",
    image_url: "http://media.juniqe.com/catalog/product/cache/2/image/800x/9df78eab33525d08d6e5fb8d27136e95/6/3/637a5.jpeg", price: 17)
  end
end
