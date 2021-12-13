class CreatePlanGears < ActiveRecord::Migration[5.2]
  def change
    create_table :plan_gears do |t|
      t.integer "plan_id", null: false
      t.integer "gear_id", null: false
      t.timestamps
    end
  end
end
