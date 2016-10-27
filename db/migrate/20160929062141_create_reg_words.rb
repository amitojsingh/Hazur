class CreateRegWords < ActiveRecord::Migration
  def change
    create_table :reg_words do |t|
      t.string :words

      t.timestamps null: false
    end
  end
end
