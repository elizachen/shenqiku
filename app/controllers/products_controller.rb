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
