class CreateDocuments < ActiveRecord::Migration[5.1]
  def change
    create_table :documents, id: :uuid do |t|
      t.uuid      :document_group_id, null: false
      t.string    :name, null: false
      t.string    :document_url, null: false
      t.text      :description, null: false

      t.timestamps
    end
    add_foreign_key :documents, :document_groups, column: :document_group_id
  end
end
