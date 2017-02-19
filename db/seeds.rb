# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u = User.new
u.email = "elizachen34@gmail.com"           # 可以改成自己的 email
u.password = "111111"                # 最少要六码
u.password_confirmation = "111111"   # 最少要六码
u.is_admin = true
u.save
puts "1 admin account created."


products = ["绿盾口罩","小米口罩","布梨口罩" ]
products_description = ["new","new", "new"]
products_prices = [69,69,139]
products_categories = ["防霾口罩", "防霾口罩","防霾口罩"]
# products_images = ["public/images/panel/jia.jpg",
#   "public/images/panel/cloth1.jpg",
#   "public/images/panel/cloth2.jpg",
#   "public/images/panel/smell.jpg",
#   "public/images/panel/earphone.jpg"]
  products_image_paths = ["https://ww3.sinaimg.cn/large/006tNc79ly1fcuy3rx1uuj30hk0hkjsb.jpg",
        "https://ww4.sinaimg.cn/large/006tNc79ly1fcuxm4mu7wj30by0by3yn.jpg",
        "https://ww4.sinaimg.cn/large/006tNc79ly1fcv327gtk9j30b40b4mzh.jpg",]

  create_products = for i in 1..3 do
    Product.create!([title: products[i - 1],
     description: products_description[i - 1],
     quantity: rand(0..10),
     price: products_prices[i - 1],
     #image: File.open(File.join(Rails.root, products_images[i-1])),
     categories: products_categories[i-1],
     image_path:products_image_paths[i-1]   ])
  end
  puts "3 products created."

products = ["空气果",]
products_description = ["new",]
products_prices = [999]
products_categories = ["霾表"]

# products_images = ["public/images/panel/choclate.jpg",
#     "public/images/panel/beef.jpg",
#     "public/images/panel/rice.jpg",
#     "public/images/panel/beef.jpg",
#     "public/images/panel/coffee.jpg"]

      products_image_paths = ["https://ww2.sinaimg.cn/large/006tNc79ly1fcuxm6dhudj3104106ata.jpg"]

  # create_products = for i in 1 do
    Product.create!([title: products[ 0],
     description: products_description[0],
     quantity: rand(0..10),
     price: products_prices[0],
     #image: File.open(File.join(Rails.root, products_images[i-1])),
     categories: products_categories[0],
     image_path:products_image_paths[0]   ])
  # end
  puts "1 products created."


  products = ["Blueair","戴森","三菱"]
  products_description = ["new","new", "new", "new", "new"]
  products_prices = [3680,4990,7980]
  # products_images = ["public/images/panel/cup.jpg",
  #   "public/images/panel/keyboard.jpg",
  #   "public/images/panel/ear.jpg",
  #   "public/images/panel/jiazi.jpg",
  #   "public/images/panel/dell.jpg",]
  products_categories = ["空气净化器", "空气净化器","空气净化器"]
    products_image_paths = ["https://ww2.sinaimg.cn/large/006tNc79ly1fcuxm4cy0qj30m80m877v.jpg",
        "https://ww4.sinaimg.cn/large/006tNc79ly1fcv32gsclaj30by0by0st.jpg",
        "https://ww2.sinaimg.cn/large/006tNc79ly1fcv32gddnmj30m80m8q6a.jpg",]


  create_products = for i in 1..3 do
    Product.create!([title: products[i - 1],
     description: products_description[i - 1],
     quantity: rand(0..10),
     price: products_prices[i - 1],
    #image: File.open(File.join(Rails.root, products_images[i-1])),
     categories: products_categories[i-1],
     image_path:products_image_paths[i-1] ])
  end
  puts "3 products created."


products = ["防霾口罩", "霾表","空气净化器"]
products_categories = ["科技众筹", "科技众筹","科技众筹"]
products_prices = [49,599,2999]
# products_images = ["public/images/panel/shoes.jpg",
#   "public/images/panel/chair.jpg",
#   "public/images/panel/coffee.jpg"]

  products_image_paths = ["https://ww4.sinaimg.cn/large/006tNc79ly1fcuxm4mu7wj30by0by3yn.jpg",
    "https://ww2.sinaimg.cn/large/006tNc79ly1fcuxm6dhudj3104106ata.jpg",
    "https://ww2.sinaimg.cn/large/006tNc79ly1fcv32gddnmj30m80m8q6a.jpg"]


  create_products = for i in 1..3 do
    Product.create!([title: products[i - 1],
     description: products_description[i - 1],
     quantity: rand(0..10),
     price: products_prices[i - 1],
     #image: File.open(File.join(Rails.root, products_images[i-1])),
     categories: products_categories[i-1],
     image_path: products_image_paths[i-1]  ])
  end
  puts "3 products created."
