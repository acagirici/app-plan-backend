class CreatePlans < ActiveRecord::Migration[6.1]
  def change
    create_table :plans do |t|
      t.references :college_application, null: false, foreign_key: true
      t.string :college_name
      t.datetime :app_deadline
      t.float :app_fee
      t.datetime :visit_date
      t.string :visit_impressions
      t.string :essay_topic
      t.integer :rating

      t.timestamps
    end
  end
end
