

module Paramable
  def to_param
    self.name.downcase(" ", "-")
  end
end