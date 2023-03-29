class CreateResponsavels < ActiveRecord::Migration[7.0]
  def change
    create_table :responsavels do |t|
      t.references :aluno, null: false, foreign_key: true
      t.string :nome
      t.string :cpf
      t.string :contato
      t.integer :status

      t.timestamps
    end
  end
end
