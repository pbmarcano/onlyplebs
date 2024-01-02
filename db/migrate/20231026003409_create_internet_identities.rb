class CreateInternetIdentities < ActiveRecord::Migration[7.1]
  def change
    create_table :internet_identities do |t|
      t.string :name
      t.string :pubkey

      t.timestamps
    end
  end
end
