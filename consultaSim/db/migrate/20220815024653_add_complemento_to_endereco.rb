class AddComplementoToEndereco < ActiveRecord::Migration[7.0]
  def change
    add_column :enderecos, :complemento, :string
  end
end
