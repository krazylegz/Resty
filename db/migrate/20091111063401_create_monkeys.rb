class CreateMonkeys < ActiveRecord::Migration
  def self.up
    create_table :monkeys do |t|
      t.text :name
      t.integer :age

      t.timestamps
    end
  end

  def self.down
    drop_table :monkeys
  end
end