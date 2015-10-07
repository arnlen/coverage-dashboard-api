class CreateCoverageReports < ActiveRecord::Migration
  def change
    create_table :coverage_reports do |t|
      t.integer :project_id
      t.float :percentage

      t.timestamps
    end
  end
end
