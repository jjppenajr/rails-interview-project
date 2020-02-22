class CreateActivityLogs < ActiveRecord::Migration
  def change
    create_table :activity_logs do |t|
      t.string :action, index: true
      t.integer :actor_id, index: true
      t.string :actor_type, index: true
      t.boolean :success

      t.timestamps null: false
    end
  end
end
