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
products_description = ["绿盾保暖口罩，舒适保暖透气，抗菌防尘防霾","贴合性密闭，柔性立体结构，舒适穿戴", "小米众筹明星产品，纳米驻级过滤呼吸，口罩体验新革命"]
products_prices = [29,62,139]
products_categories = ["防霾口罩", "防霾口罩","防霾口罩"]
# products_is_discounted = [false, true, false]
# products_orignal_price = [0, 69, 0]
products_is_fund = [false,true,false]
# products_images = ["public/images/panel/jia.jpg",
#   "public/images/panel/cloth1.jpg",
#   "public/images/panel/cloth2.jpg",
#   "public/images/panel/smell.jpg",
#   "public/images/panel/earphone.jpg"]
  products_image_paths = ["/images/thumb_1.jpg",
        "/images/thumb_2.jpg",
        "/images/thumb_3.jpg",]

  create_products = for i in 1..3 do
    Product.create!([title: products[i - 1],
     description: products_description[i - 1],
     quantity: rand(0..10),
    #  is_discounted: products_is_discounted[i-1],
    #  original_price: products_orignal_price[i-1],
     price: products_prices[i - 1],
     #image: File.open(File.join(Rails.root, products_images[i-1])),
     categories: products_categories[i-1],
     image_path:products_image_paths[i-1],
     is_fund:products_is_fund[i-1]   ])
  end
  puts "3 products created."

  products = ["空气果","环境宝","镭豆"]
  products_description = ["温度、湿度、CO2、PM2.5等","8项检测 居家必备","便携轻巧 测量精准"]
  products_prices = [965,599,369]
  products_categories = ["霾表","霾表","霾表"]
  # products_is_discounted = [true, false, false]
  # products_orignal_price = [999, 69, 0]
  products_is_fund = [true,false,false]
# products_images = ["public/images/panel/choclate.jpg",
#     "public/images/panel/beef.jpg",
#     "public/images/panel/rice.jpg",
#     "public/images/panel/beef.jpg",
#     "public/images/panel/coffee.jpg"]

    products_image_paths = ["/images/thumb_4.jpg",
      "/images/thumb_8.jpg",
      "/images/thumb_9.jpg",]

  # create_products = for i in 1 do
  create_products = for i in 1..3 do
         Product.create!([title: products[i - 1],
           description: products_description[i - 1],
           quantity: rand(0..10),
           price: products_prices[i - 1],
          #  is_discounted: products_is_discounted[i-1],
          #  original_price: products_orignal_price[i-1],
           #image: File.open(File.join(Rails.root, products_images[i-1])),
           categories: products_categories[i-1],
           image_path:products_image_paths[i-1],
           is_fund:products_is_fund[i-1]   ])
        end
        puts "3 products created."


  products = ["Blueair","戴森","三菱"]
  products_description = ["瑞典馆藏级设计，提供安全、健康、纯净的室内空气","HEPA过滤，空气净化风扇", "超静音，除甲醛PM2.5"]
  products_prices = [7880,4990,3689]
  # products_images = ["public/images/panel/cup.jpg",
  #   "public/images/panel/keyboard.jpg",
  #   "public/images/panel/ear.jpg",
  #   "public/images/panel/jiazi.jpg",
  #   "public/images/panel/dell.jpg",]
  products_categories = ["空气净化器", "空气净化器","空气净化器"]
  # products_is_discounted = [true, false, false]
  # products_orignal_price = [7980, 0, 0]
  products_is_fund = [false,false,false]
    products_image_paths = ["/images/thumb_5.jpg",
        "/images/thumb_6.jpg",
        "/images/thumb_7.jpg",]


  create_products = for i in 1..3 do
    Product.create!([title: products[i - 1],
     description: products_description[i - 1],
     quantity: rand(0..10),
     price: products_prices[i - 1],
    #  is_discounted: products_is_discounted[i-1],
    #  original_price: products_orignal_price[i-1],
    #image: File.open(File.join(Rails.root, products_images[i-1])),
     categories: products_categories[i-1],
     image_path:products_image_paths[i-1],
     is_fund:products_is_fund[i-1] ])
  end
  puts "3 products created."


products = ["小米口罩", "智能霾表"]
products_description = ["纳米过滤，传感控制，自由呼吸","智能控制，精准测量：温度、湿度、CO2、PM2.5等"]
products_categories = ["科技众筹", "科技众筹"]
products_prices = [49,599]
products_is_discounted = [true, true]
# products_orignal_price = [79, 719]
# products_images = ["public/images/panel/shoes.jpg",
#   "public/images/panel/chair.jpg",
#   "public/images/panel/coffee.jpg"]
products_is_fund = [true,true]
  products_image_paths = ["/images/thumb_2.jpg", "/images/thumb_4.jpg",]


  create_products = for i in 1..2 do
    Product.create!([title: products[i - 1],
     description: products_description[i - 1],
     quantity: rand(0..10),
     price: products_prices[i - 1],
    #  is_discounted: products_is_discounted[i-1],
    #  original_price: products_orignal_price[i-1],
     #image: File.open(File.join(Rails.root, products_images[i-1])),
     categories: products_categories[i-1],
     image_path: products_image_paths[i-1],
     is_fund: products_is_fund[i-1]  ])
  end
  puts "2 products created."
