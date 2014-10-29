class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :content
      t.belongs_to :wagon, index: true

      t.timestamps
    end
  end
end
