ActiveAdmin.register Product do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :title, :description, :price, :category_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

    # Это будет показывать только указанные колонки в админке

    index do
      selectable_column
      column "Title" do |product|
        link_to product.title, admin_product_path(product)
      end

      column :price
    end

end
