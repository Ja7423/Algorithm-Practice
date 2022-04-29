/*
 36. Valid Sudoku
 
 Determine if a 9 x 9 Sudoku board is valid. Only the filled cells need to be validated according to the following rules:
 
 Each row must contain the digits 1-9 without repetition.
 Each column must contain the digits 1-9 without repetition.
 Each of the nine 3 x 3 sub-boxes of the grid must contain the digits 1-9 without repetition.
 Note:
 
 A Sudoku board (partially filled) could be valid but is not necessarily solvable.
 Only the filled cells need to be validated according to the mentioned rules.
 
 
 Example 1:
 
 Input: board =
 [["5","3",".",".","7",".",".",".","."]
 ,["6",".",".","1","9","5",".",".","."]
 ,[".","9","8",".",".",".",".","6","."]
 ,["8",".",".",".","6",".",".",".","3"]
 ,["4",".",".","8",".","3",".",".","1"]
 ,["7",".",".",".","2",".",".",".","6"]
 ,[".","6",".",".",".",".","2","8","."]
 ,[".",".",".","4","1","9",".",".","5"]
 ,[".",".",".",".","8",".",".","7","9"]]
 Output: true
 
 
 Example 2:
 
 Input: board =
 [["8","3",".",".","7",".",".",".","."]
 ,["6",".",".","1","9","5",".",".","."]
 ,[".","9","8",".",".",".",".","6","."]
 ,["8",".",".",".","6",".",".",".","3"]
 ,["4",".",".","8",".","3",".",".","1"]
 ,["7",".",".",".","2",".",".",".","6"]
 ,[".","6",".",".",".",".","2","8","."]
 ,[".",".",".","4","1","9",".",".","5"]
 ,[".",".",".",".","8",".",".","7","9"]]
 Output: false
 Explanation: Same as Example 1, except with the 5 in the top left corner being modified to 8. Since there are two 8's in the top left 3x3 sub-box, it is invalid.
 
 
 Constraints:
 
 board.length == 9
 board[i].length == 9
 board[i][j] is a digit 1-9 or '.'.
 */

func isValidSudoku(_ board: [[Character]]) -> Bool {
    var s: [[Character: Int]] = Array(repeating: [:], count: 9)
    var v: [[Character: Int]] = Array(repeating: [:], count: 9)
    var h: [[Character: Int]] = Array(repeating: [:], count: 9)
    
    var valid = true
    for i in 0...8 {
        for j in 0...8 {
            let c = board[i][j]
            if !c.isNumber { continue }
            
            if h[i][c] != nil {
                valid = false
                break
            }
            h[i][c] = 1
            
            if v[j][c] != nil {
                valid = false
                break
            }
            v[j][c] = 1
            
            let k = (i / 3 * 3) + (j / 3)
            if s[k][c] != nil {
                valid = false
                break
            }
            s[k][c] = 1
        }
    }
    
    return valid
}

isValidSudoku([["5","3",".", ".","7",".", ".",".","."],
               ["6",".",".", "1","9","5", ".",".","."],
               [".","9","8", ".",".",".", ".","6","."],
               
               ["8",".",".", ".","6",".", ".",".","3"],
               ["4",".",".", "8",".","3", ".",".","1"],
               ["7",".",".", ".","2",".", ".",".","6"],
               
               [".","6",".", ".",".",".", "2","8","."],
               [".",".",".", "4","1","9", ".",".","5"],
               [".",".",".", ".","8",".", ".","7","9"]])

isValidSudoku([["8","3",".",".","7",".",".",".","."],
               ["6",".",".","1","9","5",".",".","."],
               [".","9","8",".",".",".",".","6","."],
               ["8",".",".",".","6",".",".",".","3"],
               ["4",".",".","8",".","3",".",".","1"],
               ["7",".",".",".","2",".",".",".","6"],
               [".","6",".",".",".",".","2","8","."],
               [".",".",".","4","1","9",".",".","5"],
               [".",".",".",".","8",".",".","7","9"]])
