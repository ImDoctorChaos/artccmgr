# frozen_string_literal: true

class CreateFeedbacks < ActiveRecord::Migration[5.0]
  def change
    create_table :feedbacks, id: :uuid do |t|
      t.integer :cid,           null: false
      t.string  :name,          null: false
      t.string  :email,         null: false
      t.string  :callsign,      null: false
      t.string  :controller,    null: false
      t.string  :position,      null: false
      t.integer :service_level, null: false
      t.text    :comments,      null: false
      t.boolean :fly_again,     default: true
      t.boolean :published,     default: false

      t.timestamps
    end
  end
end
