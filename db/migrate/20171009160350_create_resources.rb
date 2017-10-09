class CreateResources < ActiveRecord::Migration[5.0]
  def change
    create_table :resources do |t|
      t.string :name
      t.text   :description
      t.boolean :is_approved, :default => false
      t.timestamps
    end
  end
end
