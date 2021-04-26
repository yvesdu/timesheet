class CreateTimesheets < ActiveRecord::Migration[6.0]
  def change
    create_table :timesheets, id: :uuid do |t|
      t.references :user, type: :uuid, null: false, foreign_key: true
      t.date :timesheet_date

      t.timestamps
    end
  end
end
