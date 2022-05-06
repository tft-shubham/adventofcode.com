class BingoBoard

  attr_accessor :grid

  def initialize(grid)
    @grid = grid
  end

  def mark(num)
    grid.each { |row| row.map! { |other_num| other_num == num ? nil : other_num } }
  end

  def completed?
    completed_row? || completed_col?
  end

  def completed_row?
    grid.any? { |row| row.all? { |num| num == nil } }
  end

  def completed_col?
    grid.transpose.any? { |row| row.all? { |num| num == nil } }
  end

  def sum_unmarked
    grid.flatten.compact.sum
  end

end