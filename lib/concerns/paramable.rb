

Module Paramable
  def to_param
    @name.downcase(" ", "-")
  end
end