class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :branch
      t.string :repo_url

      t.timestamps
    end
  end
end
