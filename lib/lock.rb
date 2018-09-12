class Lock
  attr_reader :locked, :entries
  def initialize
    @locked = true
    @entries = []
  end

  def unlock
    @locked = false
  end
  def lock
    @locked = true
  end

end