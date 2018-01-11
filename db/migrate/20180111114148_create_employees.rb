class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :email
      t.string :password_digest
      t.string :no

      t.timestamps
    end
  end
end
