class Hamming
  VERSION = 1

  def self.compute(left, right)
    raise ArgumentError.new 'The two sequences must have equal length' if left.length != right.length
    (0..left.length).reduce(0) do |distance, idx|
      distance += 1 if left[idx] != right[idx]
      distance
    end
  end
end