%% 2. Write a function to find the largest value in the array.
function [M] = myMax(A)
% [M] = myMax(A)
% Find the largest value in the array
% author: Damian Zilkowski
% date: 26/05/20
M = A(1);
for i = 1:length(A)
    if A(i) > M
        M = A(i);
    else
        continue
    end
end
end % end myMax
-----------------------------------------------------
myMax([2 20 39 4 12])      % ans: 39

%% 3. Write a function to print N the highest values in the array.
function [M] = myNMax(A, N)
% [M] = myNMax(A, N)
% Print N largest elements in the array
% Assumptions: N < length(M) && N < length(A), 
%              A is one-dimensional(no duplicates)
% author: Damian Ziolkowski
% date: 26/05/20
for i = 1:N
    M(i) = max(A);
    A(find(A == max(A))) = 0;
end
end % end myNMax
-----------------------------------------------------
myNMax([2 3 4 6 10 23 5 1 0], 4)     % ans: [23 10 6 5]

%% 4. Write a function to calculate sin (when even) and cos (when odd).
function [Q] = myTrigOddEven(M)
% [Q] = myTrigOddEven(M)
% Calculate sin for even numbers or cos for odd numbers
% author: Damian Ziolkowski
% date: 27/05/20
for i = 1:length(M)
   if (rem(i,2) == 0)
       Q(i) = sin(M(i));
   else
       Q(i) = cos(M(i));
   end
end
end % end myTrigOddEven
---------------------------------
myTrigOddEven([0.5 0.5 0.5 0.5 0.5 0.5 0.5]) % ans: 0.88 0.48 0.88 0.48 0.88 0.48

%% 5. Write a function to compute, the matrix product of P and Q.
function [M] = myMatMult(P, Q)
% [M] = myMatMult(P, Q)
% Compute M, the matrix product of P and Q
% author: Damian Ziolkowski
% date: 26/05/20
[rowP, colP] = size(P);
[rowQ, colQ] = size(Q);
M = zeros(rowP, colQ); 
if (colP ~= rowQ)
    error('Wrong dimensions. P must be [i x k] and Q must be [k x j].')
else
    for i = 1:rowP
       for j = 1:colQ
           theSum = 0;
           for k = 1:colP
               theSum = theSum + P(i,k) * Q(k,j); 
           end
           M(i,j) = theSum;
       end
    end
end
end % end MyMatMult
--------------------------------------------
 MyMatMult(ones(3,3), ones(3,3))      % ans: [3 3 3; 3 3 3; 3 3 3]
 
%% 6. Write a function to calculate how many years does it take to reach a goal.
function [years] = mySavingPlan(P0, i, goal)
% [years] = mySavingPlan(P0, i, goal)
% Reach the goal from interest. Calculate how many years does it take.
% i is interest, P0 is payment allowing money to use your money.
% Compound interest is accumulated according to the formula. 
% author: Damian Ziolkowski
% date: 27/05/20
years = 0;
P = P0;
while (P <= goal) 
P = (1 + i) * P;
years = years + 1;
end
end % end mySavingPlan
--------------------------------------------
mySavingPlan(1000, 0.05, 2000)        % ans: 15
mySavingPlan(1000, 0.07, 2000)        % ans: 11
mySavingPlan( 500, 0.07, 2000)        % ans: 21

%% 7. Write a function, where in is an array of indices i, where B(i) is 1.
function [ind] = myFind(B)
% [ind] = myFind(B)
% Print array of idnices i where B(i) is 1.
% Assume B is an array of only ones and zeros
% author: Damian Ziolkowski
% date: 27/05/20
k = 0;
for i = 1:length(B)
    if (B(i) == 1)
        k = k + 1;
        ind(k) = i;
    else
        continue
    end
end
end % end myFind
--------------------------------------------
myFind([1 0 1 1)        % ans: [1 3 4]

%% 9. Write a function to check if the number is prime.
function [out] = myIsPrime(n)
% [out] = myIsPrime(n)
% Check if a number is prime
% author: Damian Ziolkowski
% date: 25/05/20
factor = 0;
i = 1;
while (i <= n) 
    if (rem(n,i) == 0)
        factor = factor + 1;
        i = i + 1;
    else
        i = i + 1;
    end    
end
if (factor == 2)   
    out = 1;      % Is prime
else
    out = 0;      % Not prime
end
end % end myIsPrime

%% 10. Write a function to create first N prime numbers.
function [primes] = myNPrimes(N)
% [primes] = myNPrimes(N)
% Print first N primes
% author: Damian Ziolkowski
% date: 25/05/20
factor = 0;
i = 1;
primes = 0;
j = 1;
k = 0;
if (N < 1)
    error('Insert possitive number')
elseif (N == 1)
    primes = 2;
else   
    while (length(primes) < N)
        while (i <= j)
            if (rem(j,i) == 0)
                factor = factor + 1;
                i = i + 1;
            else
                i = i + 1;
            end
        end
        if (factor <= 2)       % Is prime
            k = k + 1;
            primes(k) = j;
            factor = 0;
            j = j + 1;
            i = 1;
        else
            i = 1;
            j = j + 1;
            factor = 0;
        end
    end
end
end % end myNPrimes
--------------------------------------------------------------
myNPrimes(6)        ans: [2 3 5 7 11 13]

%% 11. Write a function to print first N numbers both a Fibonacci and prime number.
function [fibPrimes] = myNFibPrimes(N)
% [fibPrimes] = myNFibPrimes(N)
% Print first N numbers both Fibonacci and Prime
% author: Damian Ziolkowski
% date: 30/05/20
factor = 0;
i = 1;
fibPrimes = 0;
k = 0;
fibN = 1;
fibSeq = [ 0 1 1];
if (N == 1)
    fibPrimes = 2;
else
    while (length(fibPrimes) < N)
        while (i <= fibN)
            if (rem(fibN,i) == 0)
                factor = factor + 1;
                i = i + 1;
            else
                i = i + 1;
            end
        end
        if (factor == 2)
            k = k + 1;
            fibPrimes(k) = fibN;
            factor = 0;
            i = 1;
            fibN = fibSeq(end) + fibSeq(end-1);
            fibSeq(length(fibSeq)+1) = fibN;
        else
            i = 1;
            factor = 0;
            fibN = fibSeq(end) + fibSeq(end-1);
            fibSeq(length(fibSeq)+1) = fibN;
        end
    end
end

end % end myNFibPrimes
------------------------------------------------------
myNFibPrimes(8)   % ans: [2 3 5 13 89 233 1597 28657]

%% 12. Write a function to calculate sin (if odd) or cos (if even).
function [Q] = myTrigOddEven2(M)
% [Q] = myTrigOddEven2(M)
% Calculate sin(pi/M) if odd, or cos(pi/M) if even.
% author: Damian Ziolkowski
% date: 30/05/20
if (size(M,1)~= 2 && size(M,2) ~= 2)
    error('''M'' must be two-dimensional.')
else
    for i = 1:size(M,1)
       for j = 1:size(M,2)
          if (rem(M(i,j), 2) == 0) 
              Q(i,j) = cos(pi/M(i,j));
          else
              Q(i,j) = sin(pi/M(i,j));
          end
       end
    end  
end
end % end myTrigOddEven2
------------------------------------------------------------
myTrigOddEven2([3 4; 6 7])       % ans: [0.87 0.71; 0.87 0.43]
