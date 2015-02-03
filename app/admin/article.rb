ActiveAdmin.register Article do
  permit_params :title, :text

  index do
    selectable_column
    id_column
    column :title
    column :text
    actions
  end

  filter :title

  form do |f|
    f.inputs "Article Details" do
      f.input :title
      f.input :text
    end
    f.actions
  end

end
