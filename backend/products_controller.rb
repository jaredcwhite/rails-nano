class ProductsController < ActionController::Base
  attr_reader :price

  def show
    sleep params[:sleep_time].to_i if params[:sleep_time].to_i <= 10

    renderer = Shared::PageRenderer.new(self, collection: :products, id: params[:id])

    if renderer.page
      @price = "$#{SecureRandom.rand(12) + 3}.95"
      render html: renderer.content
    else
      render plain: "Product not found", status: 404
    end
  end
end
