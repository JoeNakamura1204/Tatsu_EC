ActiveAdmin.register Product do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :product_name, :price, :description, :category_id, photo:[]

  form do |f|
    f.inputs do
      f.input :product_name
      f.input :price
      f.input :category, as: :select, collection: Category.all.map { |c| [c.category_name, c.id]}
      f.input :description
      f.input :photos, as: :file
    end
    f.actions
  end
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
