class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :image1
      t.string :image2
      t.string :image3
      t.string :image4
    end
  end
end
