class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.text :notes
      # For paperclip
      t.column :avatar_file_name, :string
      t.column :avatar_content_type, :string
      t.column :avatar_file_size, :integer
      t.column :avatar_updated_at, :datetime

      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end