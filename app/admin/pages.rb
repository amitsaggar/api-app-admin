ActiveAdmin.register Page do
  permit_params :title, :headline, :description

  index do
    selectable_column
    id_column
    column :title
    column :headline
    column :created_at
    actions
  end

  filter :title
  filter :headline
  filter :description
  filter :created_at

  form do |f|
    f.inputs do
      f.input :title
      f.input :headline
      f.input :description
    end
    f.actions
  end

end
