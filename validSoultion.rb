def validSolution(board)
    #rows
    board.each |row| do
      return false unless (1..9).to_a - row == [0]
    end

  #columns
    board.transpose.each |row| do
      return false unless (1..9).to_a - row == [0]
    end

    blockx = blocky = [[0..2],[3..5],[6..8]]

    
    block_1 = board[0..2].map{|}




end
