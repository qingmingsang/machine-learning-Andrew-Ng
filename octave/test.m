% The ; denotes we are going back to a new row.
A = [1, 2, 3; 4, 5, 6; 7, 8, 9; 10, 11, 12]
%{
A =
    1    2    3
    4    5    6
    7    8    9
   10   11   12
%}

% Initialize a vector 
v = [1;2;3] 
%{
v =
   1
   2
   3
%}

% Get the dimension of the matrix A where m = rows and n = columns
[m,n] = size(A)
%{
m =  4
n =  3
%}

% You could also store it this way
dim_A = size(A)
%{
dim_A =
   4   3
%}

% Get the dimension of the vector v 
dim_v = size(v)
%{
dim_v =
   3   1
%}

% Now let's index into the 2nd row 3rd column of matrix A
A_23 = A(2,3)
%{
A_23 =  6
%}