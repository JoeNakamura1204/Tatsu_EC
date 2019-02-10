ActiveAdmin.register Stock do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :size, :color, :product_id, :stock
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
index do
  column :id
  column :product_id do |product|
    stockProduct = Product.find_by(id: product.product_id)
    link_to stockProduct.product_name, admin_product_path(product)

  end
  column :color
  column :size
  column :stock
end

form do |f|
  f.inputs do
    f.input :product_id, as: :select, collection: Product.all.map {|product| [product.product_name, product.id] }
    f.input :size
    f.input :color
    f.input :stock
  end
  f.actions
end

end
