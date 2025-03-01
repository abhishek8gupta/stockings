class CreateWeathers < ActiveRecord::Migration[8.0]
  def change
    create_table :weathers do |t|
      t.string :city
      t.integer :user_id

      t.timestamps
    end
    add_index :weathers, :user_id
  end
end
