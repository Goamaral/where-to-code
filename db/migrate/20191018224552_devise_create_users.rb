# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[6.0]

  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :email, null: false, unique: true
      t.string :username, null: false, unique: true
      t.string :name, null: false
      t.string :encrypted_password, null: false

      ## Recoverable
      t.string :reset_password_token, unique: true
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Confirmable
      t.string :confirmation_token, unique: true
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string :unconfirmed_email # Only if using reconfirmable

      t.integer :role, null: false, default: 0
      t.timestamps null: false
    end
  end

end
