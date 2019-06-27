module DLang.SuDoku.main;
import std.stdio, std.string;
import functions;
void main(){

    int[9][9] board=[[3, 0, 0, 0, 0, 8, 4, 0, 0],
                    [0, 8, 0, 0, 1, 0, 7, 2, 0],
                    [2, 0, 0, 0, 4, 0, 0, 0, 9],
                    [5, 0, 7, 0, 0, 9, 0, 1, 0],
                    [0, 0, 0, 0, 3, 0, 0, 9, 0],
                    [0, 3, 0, 0, 5, 0, 2, 0, 7],
                    [1, 0, 8, 0, 0, 4, 0, 0, 0],
                    [0, 0, 0, 0, 0, 0, 0, 4, 8],
                    [9, 2, 0, 1, 0, 7, 3, 0, 0]];

//print the sudoku board:
for (int i=0; i<9; i++){
    if ((i)%3==0){
        writeln("+-------+-------+-------+");
    }
    for (int j=0; j<9; j++){
            if ((j)%3==0){
        write("| ");
    }
        writef("%d ",board[i][j]);
    }
    write("|");
    writeln();
}
writeln("+-------+-------+-------+");
writeln("The solution is:");

//Print Solved sudoku or "No Solution"
if(SolveSudoku(board, 0, 0))
    {
    for (int i=0; i<9; i++){
        if ((i)%3==0){
            writeln("+-------+-------+-------+");
        }
    for (int j=0; j<9; j++){
        if ((j)%3==0){
            write("| ");
        }
            writef("%d ",board[i][j]);
        }
        write("|");
        writeln();
    }
    writeln("+-------+-------+-------+");
    }
    else write("\n\nNO SOLUTION\n\n");

}