class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :number
      t.references :profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
