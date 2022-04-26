class MaxIntSet

  attr_reader :store 
  def initialize(max)
    @store = Array.new(max,false)
  end

  def insert(num)
    validate!(num)
    return false if @store[num]
    self.store[num]=true

  end

  def remove(num)
    validate!(num)
    return nil unless include?(num)
    self.store[num]=false
    return num
  end

  def include?(num)
    validate!(num)
    return self.store[num]
  end

  private

  def is_valid?(num)
    num.between?(0,self.store.length-1)
  end

  def validate!(num)
    raise "Out of bounds" unless is_valid?(num)
  end
end


class IntSet
  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
  end

  def insert(num)

  end

  def remove(num)
  end

  def include?(num)
    return @store.include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_reader :count

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
  end

  def remove(num)
  end

  def include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end

  def resize!
  end
end
