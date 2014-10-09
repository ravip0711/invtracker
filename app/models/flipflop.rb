class Flipflop < ActiveRecord::Base

  # def self.import(file)
  #   CSV.foreach(file.path, headers: true) do |row|
  #     Flipflop.create! row.to_hash
  #   end
  # end

  def self.import(file)
    book = Spreadsheet.open("testexcel.xls")
    sheet1 = book.worksheet 0
    headers = sheet1.row(0).to_a
    array = []
    sheet1.to_a[1..-1].each do |row|
      line = Hash.new
      row.each_with_index do |i,index|
        line[headers[idex]] = i
      end
      array << line
    end
    #deletes all empty rows
    array = total.reject{|i| i.empty?}

    array.each do |i|
      Flipflops.create(i)
    end
  end

end
