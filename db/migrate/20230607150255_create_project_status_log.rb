class CreateProjectStatusLog < ActiveRecord::Migration[7.0]
  def change
    create_table :project_status_logs do |t|
      t.references :project, null: false, foreign_key: true
      t.integer :status, null: false

      t.timestamps
    end
  end
end
