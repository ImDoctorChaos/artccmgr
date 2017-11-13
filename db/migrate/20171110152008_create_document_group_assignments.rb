class CreateDocumentGroupAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :document_group_assignments, id: :uuid do |t|
      t.uuid  :document_group_id
      t.uuid  :user_group_id
    end
    add_foreign_key :document_group_assignments, :groups, column: :user_group_id
    add_foreign_key :document_group_assignments, :document_groups, column: :document_group_id
  end
end
