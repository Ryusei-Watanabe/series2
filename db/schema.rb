ActiveRecord::Schema.define(version: 2020_07_30_040054) do
  enable_extension "plpgsql"

  create_table "blogsapps", force: :cascade do |t|
    t.string "title"
    t.text "content"
  end

end
