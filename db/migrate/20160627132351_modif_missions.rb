class ModifMissions < ActiveRecord::Migration
  def change
    add_column(:missions, :elements11, :string)
    add_column(:missions, :elements12, :string)
    add_column(:missions, :elements13, :string)
    add_column(:missions, :elements14, :string)
    add_column(:missions, :elements15, :string)
    add_column(:missions, :elements16, :string)
    add_column(:missions, :elements17, :string)
    add_column(:missions, :elements18, :string)
    add_column(:missions, :elements19, :string)
  end
end
