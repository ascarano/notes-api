class NotesTable < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :body
      t.text :title
      t.timestamps
    end
  end
end
