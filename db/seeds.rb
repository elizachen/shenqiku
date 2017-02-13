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


products = ["携带用睫毛夹 全长约58mm", "发热羊绒卫衣【黑色】", "发热羊绒卫衣【条纹】", "超声波香薰机 直径约80×高140mm / 白色", "智能运动耳机",]
products_description = ["new","new", "new", "new", "new"]
products_prices = [69,299,299,299,699]
products_categories = ["科技众筹产品", "科技众筹产品","科技众筹产品","科技众筹产品","科技众筹产品"]
products_images = ["public/images/panel/jia.jpg",
  "public/images/panel/cloth1.jpg",
  "public/images/panel/cloth2.jpg",
  "public/images/panel/smell.jpg",
  "public/images/panel/earphone.jpg"]
  create_products = for i in 1..5 do
    Product.create!([title: products[i - 1],
     description: products_description[i - 1],
     quantity: rand(0..10),
     price: products_prices[i - 1],
     image: File.open(File.join(Rails.root, products_images[i-1])),
     categories: products_categories[i-1] ])
  end
  puts "5 products created."

products = ["草莓牛奶巧克力","二级战斧牛排","牛蒡鸡肉饭煮饭酱","一级战斧牛排","防弹咖啡【配件】"]
products_description = ["new","new", "new", "new", "new"]
products_prices = [39,159,59, 199,299]
products_categories = ["生物科技美食", "生物科技美食","生物科技美食","生物科技美食","生物科技美食"]

products_images = ["public/images/panel/choclate.jpg",
    "public/images/panel/beef.jpg",
    "public/images/panel/rice.jpg",
    "public/images/panel/beef.jpg",
    "public/images/panel/coffee.jpg"]
  create_products = for i in 1..5 do
    Product.create!([title: products[i - 1],
     description: products_description[i - 1],
     quantity: rand(0..10),
     price: products_prices[i - 1],
     image: File.open(File.join(Rails.root, products_images[i-1])),
     categories: products_categories[i-1] ])
  end
  puts "5 products created."


  products = ["泡茶神器","Cherry无影手键盘","心流耳机","显示器支架","Dell超大屏"]
  products_description = ["new","new", "new", "new", "new"]
  products_prices = [298,699, 2888,599,8199]
  products_images = ["public/images/panel/cup.jpg",
    "public/images/panel/keyboard.jpg",
    "public/images/panel/ear.jpg",
    "public/images/panel/jiazi.jpg",
    "public/images/panel/dell.jpg",]
  products_categories = ["神器", "神器","神器","神器","神器"]

  create_products = for i in 1..5 do
    Product.create!([title: products[i - 1],
     description: products_description[i - 1],
     quantity: rand(0..10),
     price: products_prices[i - 1],
     image: File.open(File.join(Rails.root, products_images[i-1])),
     categories: products_categories[i-1] ])
  end
  puts "5 products created."


products = ["黑科技白鞋", "Aeron椅子","防弹咖啡"]
products_categories = ["科技众筹产品", "神器","生物科技美食"]
products_prices = [149, 8000, 899]
products_images = ["public/images/panel/shoes.jpg",
  "public/images/panel/chair.jpg",
  "public/images/panel/coffee.jpg"]

  create_products = for i in 1..3 do
    Product.create!([title: products[i - 1],
     description: products_description[i - 1],
     quantity: rand(0..10),
     price: products_prices[i - 1],
     image: File.open(File.join(Rails.root, products_images[i-1])),
     categories: products_categories[i-1] ])
  end
  puts "3 products created."
