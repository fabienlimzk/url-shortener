class CreateUrls < ActiveRecord::Migration[6.1]
  def change
    create_table :urls do |t|
      t.string :given_url
      t.string :shorten_url

      t.timestamps
    end
  end
end
