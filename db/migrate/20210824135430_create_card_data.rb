class CreateCardData < ActiveRecord::Migration[6.1]
  def change
    create_table :card_data do |t|
      t.string :cardNumber
      t.string :email
      t.string :address
      t.string :description

      t.timestamps
    end
  end
end
