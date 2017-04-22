class CreateDecisionGroup < ActiveRecord::Migration[5.0]
  def self.up
    create_table :decision_group, id: false do |t|
      t.integer :user_id
      t.integer :decision_id
    end

    add_index(:decision_group, [:user_id, :decision_id], :unique => true)
    add_index(:decision_group, [:decision_id, :user_id], :unique => true)

  end

   def self.down
      remove_index(:decision_group,[:decision_id, :user_id])
      remove_index(:decision_group, [:user_id, :decision_id])
      drop_table :decision_group
  end
end
