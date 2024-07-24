class AddUserIdToToukous < ActiveRecord::Migration[6.1]
  def change
    add_column :toukous, :user_id, :integer
  end
end
