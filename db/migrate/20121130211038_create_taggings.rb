class CreateTaggings < ActiveRecord::Migration
  def up
    create_table :articles do |t|
      t.string :title, null: false
      t.timestamps
    end
    
    create_table :tags do |t|
      t.string :name, null: false
      t.timestamps
    end

    create_table :taggings do |t|
      t.integer :taggable_id, null: false
      t.string :taggable_type, null: false
      t.references :tag, null: false
      t.timestamps
    end
  end

  def down
    drop_table :taggings
    drop_table :tags
    drop_table :articles
  end
end
