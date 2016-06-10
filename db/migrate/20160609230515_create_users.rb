class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :tipoCadastro
      t.integer :cpf
      t.string :telefone
      t.string :sexo
      t.string :imagem

      t.timestamps null: false
    end
  end
end
