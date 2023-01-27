class AddRefToProduct < ActiveRecord::Migration[6.1]
  def change
    add_reference :products, :user, index: true, null: false
  end
end
