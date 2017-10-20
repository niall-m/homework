# n^2 search
def linear_search(fishes)
  fishes.each_with_index do |fish1, idx1|
  	max_length = true
    fishes.each_with_index do |fish2, idx2|
      next if idx1 == idx2
      max_length = false if fish2.length > fish1.length
    end
    return fish1 if max_length
  end
end

# n log n search
class Array
  def merge_sort(&prc)
    return self if self.length <= 1
    prc ||= Proc.new { |x, y| x <=> y }
    mid = length / 2
    sorted_left = self.take(mid).merge_sort(&prc)
    sorted_right = self.drop(mid).merge_sort(&prc)
    Array.merge(sorted_left, sorted_right, &prc)
  end

  def merge(left, right, &prc)
    merged = []
    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when -1
        merged << left.shift
      when 0
        merged << right.shift
      when 1
        merged << right.shift
      end
    end
    merged + left + right
  end
end

def merge_fish(fishes)
	prc = Proc.new { |x, y| y.length <=> x.length }
	fishes.merge_sort(&prc).first
end

# linear search
def linear_search(fishes)
  biggest_fish = fishes.first
  fishes.each do |fish|
    biggest_fish = fish if fish.length > biggest_fish.length
  end
  biggest_fish
end

# linear search for "slow dancing octopus"...
tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(tiles_array, direction)
  tiles_array.each_with_index do |tile, idx|
    return idx if tile == direction
  end
end

# constant look-up for "constant dance octopus"...
tiles_hash = {
    "up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}

def fast_dance(tiles_hash, direction)
  tiles_hash[direction]
end
