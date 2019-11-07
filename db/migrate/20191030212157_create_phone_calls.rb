class CreatePhoneCalls < ActiveRecord::Migration[6.0]
  def change
    create_table :phone_calls do |t|
      t.string :called
      t.string :caller
      t.datetime :start_at
      t.datetime :end_at
      t.integer :call_price_cents

      t.timestamps
    end
  end
end
