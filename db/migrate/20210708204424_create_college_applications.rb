class CreateCollegeApplications < ActiveRecord::Migration[6.1]
  def change
    create_table :college_applications do |t|
      t.string :name
      t.string :app_type
      t.string :level

      t.timestamps
    end
  end
end
