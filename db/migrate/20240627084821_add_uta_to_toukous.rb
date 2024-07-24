class AddUtaToToukous < ActiveRecord::Migration[6.1]
  def change
    add_column :toukous, :title, :string
  end
end
