class AddRole < <%= next_migration_number %>
  def change
    add_column :<%= model_class_name.tableize %>, :role, :integer, default: 0
  end
end
