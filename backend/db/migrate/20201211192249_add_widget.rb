class AddWidget < ActiveRecord::Migration[6.0]
  def change
    create_table :widgets do |t|
      t.string :name
      t.timestamps
    end
  end
end
