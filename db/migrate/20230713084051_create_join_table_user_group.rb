class CreateJoinTableUserGroup < ActiveRecord::Migration[7.0]
  def change
    create_join_table :user1s, :group1s do |t|
      t.belongs_to :user1, foreign_key: true
      t.belongs_to :group1, foreign_key: true
    end
    add_index :group1s_user1s, [:user1_id, :group1_id], unique: true
  end
end
