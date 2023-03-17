module BooksHelper
  def latest_sells id
    array = Array.new

    Book.find(id).sells.each do |sell|
      array.push(sell.quantity)
    end

    array
  end
end
