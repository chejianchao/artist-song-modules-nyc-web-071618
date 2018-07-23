
module Memorable
  def count
    self.all.size
  end
  
  def reset_all
    self.all.clear
  end
end