# frozen_string_literal: true

class AddDeviseToUsers < ActiveRecord::Migration[8.0]
  def self.up
    change_table :users do |t|
      ## Database authenticatable
      # t.string :email, null: false, default: ""   # ← Ya la tienes, ¡comentada!
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable (opcional, comentado)
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.string   :current_sign_in_ip
      # t.string   :last_sign_in_ip

      ## Confirmable (opcional)
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email

      ## Lockable (opcional)
      # t.integer  :failed_attempts, default: 0, null: false
      # t.string   :unlock_token
      # t.datetime :locked_at

      # t.timestamps null: false # solo si no tienes timestamps en tu modelo
    end

    # El índice en email ya lo puedes tener también, pero no hace daño si ya existe
    # Si te da error, comenta la línea siguiente:
    # add_index :users, :email, unique: true

    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end

  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end
