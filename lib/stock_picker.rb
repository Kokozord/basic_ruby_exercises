def stock_picker(days)
  best = [0, 1]
  days.each_with_index do |day, i|
    days.each_with_index do |other, k|
      next if k == 0
      if day < other && day <= days[best[0]] && other - day > days[best[1]] - days[best[0]] && i < k
        best[0] = i
        best[1] = k
      else
        next 
      end
    end
  end
  best
end 

