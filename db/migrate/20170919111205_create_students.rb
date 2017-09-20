class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.string :address
      t.string :city

      t.timestamps
    end
  end
end