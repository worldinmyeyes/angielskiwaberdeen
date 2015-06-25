class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :first_name
      t.string :last_name
      t.string :telephone
      t.string :email
      t.string :content

      t.timestamps null: false
    end
  end
end
