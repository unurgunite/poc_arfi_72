class AddIndexOnDogsName < ActiveRecord::Migration[7.2]
  # Since MySQL doesn't allow indexing on my_lower(name), we must use a generated column with a built-in and
  # then index that.
  def up
    add_column :dogs, :name_lower, :string
    execute <<~SQL
      UPDATE dogs SET name_lower = my_lower(name);
    SQL
    add_index :dogs, :name_lower
  end

  def down
    remove_index :dogs, :name_lower
    remove_column :dogs, :name_lower
  end
end
