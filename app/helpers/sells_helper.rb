module SellsHelper
  def sells_per_day
    array = Array.new

    Sell::DAYS.each do |day|
      array.push([day, Sell.where(day: day).sum(:quantity)])
    end

    array
  end
end
