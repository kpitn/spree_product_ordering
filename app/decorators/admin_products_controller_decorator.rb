Admin::ProductsController.class_eval do

  def reorder

    @taxon = Taxon.find(params[:taxon_id]) if params[:taxon_id]
    if @taxon
      @products = @taxon.products.order('position')
    else
      @products = nil
    end

  end

  def order_products

    params[:item_list].each_with_index do |id, index|
      Product.update_all(['position=?', index+1], ['id=?', id])
    end

    respond_to do |format|
      format.js do
        render :update do |page|
          page.visual_effect :highlight, "item_list"
        end
      end
    end
  end
end
