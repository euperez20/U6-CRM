ActiveAdmin.register Customer do
  permit_params :full_name, :phone_number, :email_address, :notes

  index do
    selectable_column
    id_column
    column :full_name
    column :phone_number
    column :email_address
    column :notes
    actions
  end

  form do |f|
    f.inputs "Customer Details" do
      f.input :full_name
      f.input :phone_number
      f.input :email_address
      f.input :notes
    end
    f.actions
  end
end
