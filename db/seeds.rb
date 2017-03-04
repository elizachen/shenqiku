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
products_description = ["绿盾儿童口罩，舒适保暖透气，抗菌防尘防霾。",
  "外形酷炫，戴上之后呼吸完全无阻力，同时PM2.5高达99.97%。颜值与健康，一样都不少。",
  "防晒／防雾霾／防尘／防病菌／防甲醛／防二手烟，新风系统立体风道，提供高度净化的正压新风。"]
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
  products_description = ["空气果是国内最早把空气检测仪的概念引入国内市场的产品。精确检测温度、湿度、CO2、PM2.5等，无论制作工艺、和产品质量、测量精准度上在同类产品中领先。",
    "智能家居空气检测仪，8项检测，实时、精准掌握空气质量。",
    "随身携带的空气质量检测仪，提供四种空气质量指数。"]
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
  products_description = ["瑞典馆藏级设计，HEPASilent®专利技术，世界上高效静音的领导性过滤系统之一。节能环保，零臭氧排放，确保了Blueair实现室内空气净化系统的“两低一高”——低风阻 低噪音——高效率。",
    "空气净化+空气循环二合一，采用360°超细玻璃纤维HEPA滤网净化99.95%PM0.1，Air Amplifier气流技术有效循环室内空气。",
    "有效改善空气质量，增强体质；适用于卧室、客厅、书房、办公室、会议室等等；针对雾霾PM2.5、消除二手烟危害，空气闷，呼吸不舒畅等情况！"]
  products_prices = [6880,4990,3689]
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


products = ["小米口罩", "空气果"]
products_description = ["纳米过滤，传感控制，自由呼吸","智能控制，精准测量：温度、湿度、CO2、PM2.5等"]
products_categories = ["科技众筹", "科技众筹"]
products_prices = [49,599]
# products_is_discounted = [true, true]
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
