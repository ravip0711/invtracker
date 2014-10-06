class Flipflop < ActiveRecord::Base

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Flipflop.create! row.to_hash
    end
  end

end
