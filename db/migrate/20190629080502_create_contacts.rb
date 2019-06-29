class CreateContacts < ActiveRecord::Migration[4.2]
  def change
    create_table :contacts do |t|
      t.string :name
    end
  end
end