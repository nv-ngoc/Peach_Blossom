class AddFoginkeyPost < ActiveRecord::Migration[5.1]
  def change
    add_reference :posts, :product, index: true, foreign_key: true
  end
end
