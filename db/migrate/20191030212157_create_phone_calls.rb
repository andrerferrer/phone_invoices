class CreatePhoneCalls < ActiveRecord::Migration[6.0]
  def change
    create_table :phone_calls do |t|
      t.string :called
      t.string :caller
      t.time :start_at
      t.time :end_at
      t.integer :call_price

      t.timestamps
    end
  end
end
