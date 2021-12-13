class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.integer "user_id", null: false
      t.string "title", null: false
      t.date "departure_date", null: false
      t.date "return_date", null: false
      t.string "place", null: false
      t.time "check_in_time"
      t.time "check_out_time"
      t.text "memo"
      t.integer "member", null: false
      t.timestamps
    end
  end
end
