%% 1. Recall sinh. Write function [ ((exp(x)-exp(-x))/2 ]. Solve for x = [0,1,2].
function [y] = mySinh(x)
% [y] = mySinh(x)
% calculate (exp(x)-exp(-x))/2
% author: Damian Ziolkowski
% date: 23/05/20
y  = (exp(x)-exp(-x))/2;
end
----------------------------
b = mySinh(0)   % 0
c = mySinh(1)   % 1.1752
d = mySinh(2)   % 3.6269

%% 2. Write the function to create the matrix M = [1 0 1 0 1; 0 1 0 1 0; 1 0 1 0 1; 0 1 0 1 0; 1 0 1 0 1] and display n x n matrix.
function [M] = myCheckerBoard(n)
% Create the n x n matrix M = [1 0 1 0 1; 0 1 0 1 0; 1 0 1 0 1; 0 1 0 1 0; 1 0 1 0 1]
% author: Damian Ziolkowski
& date: 23/05/20
M = [1 0 1 0 1; 0 1 0 1 0; 1 0 1 0 1; 0 1 0 1 0; 1 0 1 0 1];
M = M(1:n,1:n);
end
-----------------------------
myCheckerboard(1)   % [1]
myCheckerboard(2)   % [1 0; 0 1]
myCheckerboard(3)   % [1 0 1; 0 1 0; 1 0 1]

%% 3. Write function to calculate the area of a triangle.
function [A] = myTriangle(b,h)
% [A] = myTriangle(b,h)
% Calculate the are of a triangle (b is base, h is height)
% author: Damian Ziolkowski
% date: 23/05/20
A = 0.5*b*h;
end
------------------------------
myTriangle( 2, 1)   % 1
myTriangle(12, 5)   % 30

%% 4. Write a function, to split matrix M. M1 is the left half, M2 is the right half (if is an odd number of column the middle one goes to M1).
function [M1, M2] = mySplitMatrix(M)
% [M1, M2] = mySplitMatrix(M)
% Split a matrix: M1 left side and the middle column, M2 right side
% author: Damian Ziolkowski
% date: 23/05/20
[x, y] = size(M);
y = ceil(y/2);     % Round toward possitive infinity
M1 = M(:, 1:y);
M2 = M(:, (y+1):end);
end
-------------------------------
M = [1 2 3; 4 5 6; 7 8 9];
[a, b] = mySplitMatrix(M)     % M1 = [1 2; 4 5; 7 8], M2 = [3; 6; 9]

%% 5. Write a function to calculate the area and the volume of the cylinder.
function [area, volume] = myCylinder(r, h)
% [area, volume] = myCylinder(r, h)
% Calculate the surface area and the volume. (r is the radius, h is the height)
area = 2*pi*(r^2) + 2*pi*r*h;
volume = pi*(r^2)*h;
end
-------------------------------
[area, volume] = myCylinder(2,3)    % area = 62.8319, volume = 37.6991

%% 6. Write a function to count odd numbers in one-dimensional array.
function [N] = myNOdds(A)
% [N] = myNOdds(A)
% Count number of od numbers.
% author: Damian Ziolkowski
% date: 23/05/20
idx = mod(A,2)~=0;      % True for odd number
odd = A(idx);           % Display all odd numbers
N = length(odd);        % Count odd numbers
end
--------------------------------
myNOdds([1:100])        % ans: 50
myNOdds([0:2:100])      % and:  0

%% 7. Write a function to create m x n matrix of twos.
function [out] = myTwos(m,n)
% [out] = myTwos(m,n)
% Create the m x n matrix of twos.
% author: Damian Ziolkowski
% date: 23/05/20
matrix = ones(m,n);
out = matrix * 2;
end
--------------------------------
myTwos(2,3)      % ans: [2 2 2; 2 2 2]

%% 8. Write a function, where S is the concatenation of the strings S1 and S2.
function [S] = myAddString(S1,S2)
% [S] = myAddString(S1,S2)
% Conatenation of strings
% author: Damian Ziolkowski
% date: 23/05/20
S = [S1, S2];
end
---------------------------------
S = myAddString(myAddString('Programming', ' '), myAddString('is ', 'fun!'))
% ans: Programming is fun!

%% 9. Write a function that iputs a name, id , and grades, and generates a 1x 1 struct array. 
      Use the function to populate a 1 x 5 array called student 
function [newStudent] = myStudent(name,id,grades)
% [newStudent] = myStudent(name,id,grades)
% Create a struct for the new student
% author: Damian Ziolkowski
% date: 23/05/20
newStudent.name = name;
newStudent.ID = id;
newStudent.grades = grades
end
---------------------------------
>> student = [myStudent('Damian',1,'A'), myStudent('Magda',2,'B'),myStudent('Jan',3,'C'),myStudent('Ola',4,'D'),myStudent('Tomasz',5,'E')]

%% 11. Create a function, where a name is a string, age is a double, G is string.
function [G] = myGreeting(name,age)
% [G] = myGreeting(name,age)
% Introduce yourself.
% author: Damian Ziolkowski
% date: 23/05/20
[G] = sprintf('Hi, my name is %s and I am %d years old.', name, age);
end
---------------------------------
myGreeting('Damian',25)   % ans: Hi, my name is Damian and I am 25 years old.

%% 12. Write a function to calculate are of the ring. Remeber to vectorize the function.
function [A] = myDonutArea(r1,r2)
% [A] = myDonutArea(r1,r2)
% Calculate the area of the ring. (r1, r2 is inner and outer radius respectively)
% author: Damian Ziolkowski
% date: 24/05/20
A = [(pi*r2.^2) - (pi*r1.^2)];
end
---------------------------------
myDonutArea(1:5,2:2:10)    % ans: [9.4248   37.6991   84.8230  150.7964  235.6194]

%% 13. Write a function, where indices is an array of the indices in A such that |A-a|<tol.
function [indices] = myWithinTolerance(A, a, tol)
% [indices] = myWithinTolerance(A, a, tol)
% Indices in A such that |A-a|<tol.
% author: Damian Ziolkowski
% date: 24/05/20
indices = find(abs(A-a)<tol);
end
---------------------------------
myWithinTolerance(0:.01:1, .5, .03)   % ans: [48    49    50    51    52    53]

%% 14. Write a function, where boundedA is equal to the array A wherever bottom=<A=<top.
function [boundedA] = myBoundingArray(A, top, bottom)
% [boundedA] = myBoundingArray(A, top, bottom)
% Chceck condition and dispaly results
% author: Damian Ziolkowski
% date: 24/05/20
boundedA = A( (A>=bottom) & (A<=top) ); 
end
---------------------------------
myBoundingArray(-5:5, 3 ,-3)    % ans: [ -3 -2 -1 0 1 2 3 ]    
