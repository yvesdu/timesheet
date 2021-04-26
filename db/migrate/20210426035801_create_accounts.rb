class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts, id: :uuid do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :province
      t.string :zip
      t.string :country
      t.jsonb :settings, null: false, default: {}

      t.timestamps
    end
    add_index :accounts, :settings, using: :gin
  end
end
