class CreateDocumentGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :document_groups, id: :uuid do |t|
      t.string :name, null: false, unique: true
    end
  end
end
