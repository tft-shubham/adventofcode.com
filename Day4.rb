require './BingoBoard.rb'
random_numbers = [
    7, 4, 9, 5, 11, 17, 23, 2, 0, 14, 21, 24, 10, 16, 13, 6, 15, 25, 12, 22, 18, 20, 8, 19, 3, 26, 1
]
grid = [
    [
        [22, 13, 17, 11, 0],
        [8, 2, 23, 4, 24],
        [21, 9, 14, 16, 7],
        [6, 10, 3, 18, 5],
        [1, 12, 20, 15, 19]
    ],
    [
        [3, 15, 0, 2, 22],
        [9, 18, 13, 17, 5],
        [19, 8, 7, 25, 23],
        [20, 11, 10, 24, 4],
        [14, 21, 16, 12, 6]
    ],
    [
        [14, 21, 17, 24, 4],
        [10, 16, 15, 9, 19],
        [18, 8, 23, 26, 20],
        [22, 11, 13, 6, 5],
        [2, 0, 12, 3, 7]
    ]
]

def run(random_numbers, grids)
  nums = random_numbers
  boards = grids.map! { |grid| BingoBoard.new(grid) }

  winning_board = nil
  current_num = nil

  while !winning_board
    current_num = nums.shift

    boards.each_with_index do |b, i|
      b.mark(current_num)
      if b.completed?
        winning_board = b
        p "Winning board : #{i+1}"
      end
    end

  end

  return "Result : #{winning_board.sum_unmarked * current_num}"
end

p run(random_numbers, grid)