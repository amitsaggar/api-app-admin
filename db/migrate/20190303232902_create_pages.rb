class CreatePages < ActiveRecord::Migration[5.1]
  def change
    create_table :pages do |t|
      t.string :title
      t.string :headline
      t.string :description
      t.string :photo

      t.timestamps
    end
  end
end
