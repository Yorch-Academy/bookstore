module SellsHelper
  def sells_per_day
    array = Array.new

    Sell::DAYS.each do |day|
      array.push([day, Sell.where(day: day).sum(:quantity)])
    end

    array
  end

  def revenue_from_sells
    array = Array.new

    Book.all.each do |book|
      array.push([book.name, book.sells.sum(:total).round(2)])
    end

    array
  end
end
