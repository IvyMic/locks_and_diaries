
class Diary
  attr_reader :entries, :lock
  def initialize
    @entries = []
    @lock = Lock.new
  end
  def add_entries(entry)
    raise "Diary is locked!" if @lock.locked
    @entries << entry
  end
  def get_entries
    raise "Diary is locked!" if @lock.locked
    @entries
  end
end