class CreateParticipants < ActiveRecord::Migration[5.0]
  # def change
    # create_table :participants do |t|

    def self.up
    create_table :participants, id: false do |t|
      t.integer :decision_id
      t.integer :user_id
    end

    add_index(:participants, [:decision_id, :user_id], :unique => true)
    add_index(:participants, [:user_id, :decision_id], :unique => true)
  end

  def self.down
      remove_index(:participants, [:user_id, :decision_id])
      remove_index(:participants, [:decision_id, :user_id])
      drop_table :participants
  end


    
  end
# end
