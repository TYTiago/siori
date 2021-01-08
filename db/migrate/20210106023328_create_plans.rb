class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.string  :title,          null: false
      t.string  :place,          null: false
      t.text    :list           
      t.integer :calendar,       null: false
      t.integer :user_id,        null: false, foreign_key: true
      t.integer :time_id,        null: false
      t.timestamps
    end
  end
end
