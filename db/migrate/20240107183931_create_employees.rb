class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.string :email
      t.string :office_phone
      t.string :bio
      t.string :profile_image_url
      t.string :linkedin_url
      t.string :in_leadership

      t.timestamps
    end
  end
end


