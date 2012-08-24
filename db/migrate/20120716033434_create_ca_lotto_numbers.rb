class CreateCaLottoNumbers < ActiveRecord::Migration
  def change
    create_table :ca_lotto_numbers do |t|
      t.string :number
      t.string :bonusNumber

      t.timestamps
    end
  end
end
