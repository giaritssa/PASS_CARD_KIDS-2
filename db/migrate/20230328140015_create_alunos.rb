class CreateAlunos < ActiveRecord::Migration[7.0]
  def change
    create_table :alunos do |t|
      t.string :nome
      t.string :serie
      t.string :turno
      t.integer :ra

      t.timestamps
    end
  end
end
