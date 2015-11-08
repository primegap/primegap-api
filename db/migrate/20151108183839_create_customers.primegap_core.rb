# This migration comes from primegap_core (originally 20151108161421)
class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :full_name
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone

      t.timestamps null: false
    end
  end
end