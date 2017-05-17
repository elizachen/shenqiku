require "populator"
namespace :dev do
  desc "Make fake data"
   task :fake  => :environment do
     Order.populate(50) do |order_test|
       order_test.total=Populator.words(10..20)
       order_test.user_id = 2
       order_test.billing_name = "elz"
       order_test.billing_address = Faker::Address.street_address
       order_test.shipping_name = ["eliza","mallun","Beryl","Forest"].sample
       order_test.shipping_address = Faker::Address.street_address
       order_test.created_at =  Time.now - rand(10).days - rand(24).hours
       order_test.updated_at =  Time.now
       order_test.token = "6a4e9f48-b37f-4705-b8aa-5b6fd2aa9141"
       order_test.is_paid = [true,false].sample
       order_test.payment_method = "alipy"
       order_test.aasm_state = ["paid","shipping","shipped","order_cancelled","good_returned"].sample
     end
   end
end
