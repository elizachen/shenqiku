class ProductsController < ApplicationController
  before_action :validate_search_key, only: [:search]

  def index
     @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def add_to_cart
    @product = Product.find(params[:id])
    if !current_cart.products.include?(@product)
      if @product.id==2 || @product.id==4
        @product.fund_price1=1
        @product.fund_price2=0
        @product.save
      end
      current_cart.add_product_to_cart(@product)
      flash[:notice] = "你已成功将 #{@product.title}加入购物车"
    else
      flash[:warning]="你的购物车内已有此物品"
    end
    redirect_to :back
  end

  def add_to_cart_f
    @product = Product.find(params[:id])
    binding.pry
    if !current_cart.products.include?(@product)
      if @product.id==2  #小米口罩
        @product.fund_price2=49
        @product.fund_price1=0
        @product.save
      elsif @product.id==4  #空气果
        @product.fund_price2=799
        @product.fund_price1=0
        @product.save
      end
      current_cart.add_product_to_cart(@product)
      flash[:notice] = "你已成功将 #{@product.title}加入购物车"
    else
      flash[:warning]="你的购物车内已有此物品"
    end
    redirect_to :back
  end

  def search
    @query = @query_string
     if @query_string.present?
     if 0 == @query_string.casecmp("discounted")
       search_result = Product.where(is_discounted: true)
     else
     # search_result = Product.ransack(@search_criteria).result(distinct: true)
     # params.require(:product).permit(:title, :description, :quantity, :price, :image, :categories, :image_path, )
     search_result = Product.ransack({:title_or_categories_cont => @query_string}).result(distinct: true)
     # search_result = Product.ransack({{:title_or_field_or_location_or_company_name_cont => @q}}).result(distinct: true)
     end
     @products = search_result
     else
    # @jobs = Job.published.recent.paginate(page: params[:page], per_page:5)
     @products = Product.order('created_at DESC')
     end
   end

  def funding_product

      @product = Product.find(params[:id])

  end






   protected
      def validate_search_key
        @query_string = params[:query_string].gsub(/\\|\'|\/|\?/, '') if params[:query_string].present?
      end

      def search_criteria(query_string)
        { title_or_description_or_answers_content_cont: query_string }
      end

end
