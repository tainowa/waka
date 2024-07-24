class AddDetailsToTweets < ActiveRecord::Migration[6.1]
  def change
    add_column :tweets, :waka, :string
    add_column :tweets, :gendai, :string
    add_column :tweets, :sakusya, :string
    add_column :tweets, :kisetsu, :string
    add_column :tweets, :ganbaru, :string
  end
end
