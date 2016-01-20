class CreateJaps < ActiveRecord::Migration
  def self.up
 ActiveRecord::Schema.define(version: 0) do

  create_table "jap", id: false, force: :cascade do |t|
    t.integer "Id",              limit: 4,     null: false
    t.text    "Sentence",        limit: 65535, null: false
    t.text    "Translation",     limit: 65535, null: false
    t.text    "Transliteration", limit: 65535, null: false
  end

end

end

end
