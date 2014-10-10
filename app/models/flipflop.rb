class Flipflop < ActiveRecord::Base

  # def self.import(file)
  #   CSV.foreach(file.path, headers: true) do |row|
  #     Flipflop.create! row.to_hash
  #   end
  # end

  def self.import(file)
    book = Spreadsheet.open(file.path)
    sheet1 = book.worksheet 0
    # headers = sheet1.row(0).to_a
    headers = [:last_rcvd_date,:dcs,:vc,:desc1,:desc2,:attrstyle,:size,:oh_qty,:oh_ext_cost,:oh_ext_retail,:sold_qty,:sold_ext_cost,:sold_mgr,:weeks_of_supply,:report_sell_thru]
    array = []
    sheet1.to_a[1..-1].each do |row|
      line = Hash.new
      row.each_with_index do |i,index|
        line[headers[index]] = i
      end
      array << line
    end
    #deletes all empty rows
    array = array.reject{|i| i.empty?}

    array.each do |i|
      Flipflop.create(i)
    end
  end

end
