class CreateToukous < ActiveRecord::Migration[6.1]
  def change
    create_table :toukous do |t|
      t.text :body

      t.timestamps
    end
  end
end
