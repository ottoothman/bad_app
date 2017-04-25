class ChangeDecisionGroupName < ActiveRecord::Migration[5.0]
  def change
    rename_table :decision_group, :decision_groups
  end
end
