module DLang.SuDoku.functions;

int NumIsAvailable(ref int[9][9] board, int row, int col, int num)
{
    int rowStart = (row/3) * 3;
    int colStart = (col/3) * 3;

    for(int i=0; i<9; ++i)
    {
        if (board[row][i] == num) return 0;
        if (board[i][col] == num) return 0;
        if (board[rowStart + (i%3)][colStart + (i/3)] == num) return 0;
    }
    return 1;
}

int SolveSudoku(ref int[9][9] board, int row, int col)
{
    int i;
    if(row<9 && col<9)
    {
        if(board[row][col])
        {
            if((col+1)<9) return SolveSudoku(board, row, col+1);
            else if((row+1)<9) return SolveSudoku(board, row+1, 0);
            else return 1;
        }
        else
        {
            for(i=0; i<9; ++i)
            {
               
                if(NumIsAvailable(board, row, col, i+1))
                {
                    board[row][col] = i+1;
                    if(SolveSudoku(board, row, col)) return 1;
                    else board[row][col] = 0;
                }

            }
        }
        return 0;
    }
    else return 1;
}