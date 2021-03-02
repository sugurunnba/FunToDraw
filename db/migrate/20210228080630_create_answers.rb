class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.string :message
      t.string :answer_image_id

      t.timestamps
    end
  end
end
