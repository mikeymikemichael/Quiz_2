class AddDepartmentToArticles < ActiveRecord::Migration
  def change
    add_column :requests, :department, :text
    add_column :requests, :message, :text
  end
end
