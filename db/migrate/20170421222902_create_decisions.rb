class CreateDecisions < ActiveRecord::Migration[5.0]
  def change
    create_table :decisions do |t|
      t.string :location
      t.text :decision_text

      t.timestamps
    end
  end
end
