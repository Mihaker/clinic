class AddDoctorRefToCategories < ActiveRecord::Migration[7.0]
  def change
    add_reference :doctors, :category, foreign_key: true, default: 22 
  end
end
