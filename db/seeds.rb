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

#### 口罩
products = ["绿盾口罩","小米口罩","布梨口罩" ]
products_description = ["绿盾保暖口罩，舒适保暖透气，抗菌防尘防霾","贴合性密闭，柔性立体结构，舒适穿戴", "小米众筹明星产品，纳米驻级过滤呼吸，口罩体验新革命"]
products_prices = [29,69,139]
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


#### 霾表
products = ["空气果","环境宝","镭豆"]
products_description = ["温度、湿度、CO2、PM2.5等","8项检测 居家必备","便携轻巧 测量精准"]
products_prices = [999,599,369]
products_categories = ["霾表","霾表","霾表"]

# products_images = ["public/images/panel/choclate.jpg",
#     "public/images/panel/beef.jpg",
#     "public/images/panel/rice.jpg",
#     "public/images/panel/beef.jpg",
#     "public/images/panel/coffee.jpg"]

      products_image_paths = ["https://ww2.sinaimg.cn/large/006tNc79ly1fcuxm6dhudj3104106ata.jpg",
        "https://ww2.sinaimg.cn/large/006tKfTcly1fcyfqrpu8rj30m80m8dju.jpg",
        "https://ww1.sinaimg.cn/large/006tKfTcly1fcyfqposzej30m80m8dhg.jpg"]

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

#### 空气净化器
  products = ["Blueair","戴森","三菱"]
  products_description = ["瑞典馆藏级设计，提供安全、健康、纯净的室内空气","HEPA过滤，空气净化风扇", "超静音，除甲醛PM2.5"]
  products_prices = [7980,4990,3689]
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


products = ["air口罩", "智能霾表"]
products_categories = ["科技众筹", "科技众筹"]
products_description = ["纳米过滤，传感控制，自由呼吸","智能控制，精准测量：温度、湿度、CO2、PM2.5等"]
products_prices = [49,599]

# products_images = ["public/images/panel/shoes.jpg",
#   "public/images/panel/chair.jpg",
#   "public/images/panel/coffee.jpg"]

  products_image_paths = ["https://ww4.sinaimg.cn/large/006tNc79ly1fcuxm4mu7wj30by0by3yn.jpg",
    "https://ww2.sinaimg.cn/large/006tNc79ly1fcuxm6dhudj3104106ata.jpg"]


  create_products = for i in 1..2 do
    Product.create!([title: products[i - 1],
     description: products_description[i - 1],
     quantity: rand(0..10),
     price: products_prices[i - 1],
     #image: File.open(File.join(Rails.root, products_images[i-1])),
     categories: products_categories[i-1],
     image_path: products_image_paths[i-1]  ])
  end
  puts "3 products created."
